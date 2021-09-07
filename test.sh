(cd torch-with-gpu; docker-compose run --rm app python -c "import torch;print(torch.cuda.is_available())")
