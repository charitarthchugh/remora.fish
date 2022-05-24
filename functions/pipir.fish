function pipir -d "do pip install -r requirments.txt" --wraps "pip install -r requirements.txt"
    pip install -r requirments.txt $argv
end
