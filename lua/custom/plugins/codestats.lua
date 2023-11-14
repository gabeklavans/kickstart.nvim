token = os.getenv("CODESTATS_API_KEY")
if token ~= nil then
  return {
    'YannickFricke/codestats.nvim',
    opts = {
      token = token
    }
  }
else
  return {}
end
