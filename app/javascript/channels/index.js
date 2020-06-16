// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context(".", true, /_channel\.js$/);
channels.keys().forEach(channels);

// $(".checkbox").on("click", function () {
//   $(".checkbox").prop("checked", false); //  全部のチェックを外す
//   $(this).prop("checked", true); //  押したやつだけチェックつける
// });
