class TasksController < ApplicationController
    def index
      @tasks = Task.all
    end

    def new
      
    end
  
    def create
      # binding.pry
      # Task.create(task_params)
      # redirect_to tasks_path

      params[:project].each do | di1,di2 |

        # チェックボックスにチェックがついている場合
        if di2 == "1"
          # DBのtitleカラムにタイトルを格納し保存
          # Task.create(project:params[:di1],title:params[:title],content:params[:content],deadline:params[:deadline])
          Task.create(title:params[:title],content:params[:content],deadline:params[:deadline],project:di1)
          
        end
      end 
      redirect_to tasks_path
      
    end

    def edit
      @task = Task.find(params[:id])
    end
  
    def update
     
      @task = Task.find(params[:id])
    
      params[:project].each do | di1,di2 |

        # チェックボックスにチェックがついている場合
        if di2 == "1"
          # DBのtitleカラムにタイトルを格納し保存
          @task.update(title:params[:title],content:params[:content],deadline:params[:deadline],project:di1)
          
        end
      end 
      redirect_to tasks_path
      
    end

    def show

    end

    def destroy
      @task = Task.find(params[:id])
      @task.destroy
      redirect_to tasks_path
    end

    def work
      @tasks = Task.all
    end

    def hobby
      @tasks = Task.all
    end

    def other
      @tasks = Task.all
    end
  
    private
      def task_params
        params.permit(:title, :content, :deadline)
      end

    end
