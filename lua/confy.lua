local confy = {};
confy.name = "I am confy otto test";

confy.setup = function (opt)
  opt = opt or {}

  local edit = opt.edit or ",e";
  local reload = opt.reload or ",r";
  local thank_your = opt.thank_your or ",t";

  vim.keymap.set('n', edit, function()
    confy.edit();
  end);

  vim.keymap.set('n', reload, function()
    confy.reload();
  end);

  vim.keymap.set('n', thank_your, function ()
    confy.thank_you();
  end);
end

confy.edit = function()
  vim.cmd('edit ~/.config2/nvim/init.lua')
end

confy.reload = function()
  vim.cmd("source ~/.config2/nvim/init.lua")
end

confy.thank_you = function ()
  print("Thank you for using confy!")
end

confy.count = 0;

return confy;
