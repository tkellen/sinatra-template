task :start do
  `rakep build`
  `thin -d -e production start`
end