local status,color = pcall(require,"colorizer")
if (not status) then return end

color.setup{
  'css';
  'scss';
}