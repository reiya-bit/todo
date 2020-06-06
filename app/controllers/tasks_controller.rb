class TasksController < ApplicationController
    def index
      @tasks = Task.all
    end

    def new
      
    end
  
    def create
      
      Task.create(task_params)
      redirect_to tasks_path
      params[:project].each do | di1,di2 |

        # チェックボックスにチェックがついている場合
        if di2 == "1"
          # DBのtitleカラムにタイトルを格納し保存
          Task.create(project:di1)
          
        end
      end 
      
    end

    def edit
      @task = Task.find(params[:id])
    end
  
    def update
      @task = Task.find(params[:id])
      @task.update(task_params)
      redirect_to tasks_path
    end

    def destroy
      @task = Task.find(params[:id])
      @task.destroy
      redirect_to tasks_path
    end
  
    private
      def task_params
        params.permit(:title, :content, :deadline)
      end

    end
