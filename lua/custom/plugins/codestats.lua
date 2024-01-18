token = os.getenv("CODESTATS_API_KEY")
if token ~= nil then
  return {
    'gabeklavans/codestats.nvim',
    opts = {
      token = token
    }
  }
else
  return {}
end
