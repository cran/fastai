

context("GAN")

source("utils.R")

test_succeeds_windows('download URLs_HORSE_2_ZEBRA', {
  if(!dir.exists('horse2zebra')) {
    options(timeout=10000)
    URLs_HORSE_2_ZEBRA()
  }
})


test_succeeds_windows('dataloader URLs_HORSE_2_ZEBRA', {
  horse2zebra = 'horse2zebra'
  trainA_path = file.path(horse2zebra,'trainA')
  trainB_path = file.path(horse2zebra,'trainB')
  testA_path = file.path(horse2zebra,'testA')
  testB_path = file.path(horse2zebra,'testB')

  if(reticulate::py_module_available('upit')) {
    dls = get_dls(trainA_path, trainB_path, num_A = 130,load_size = 270,crop_size = 144,bs=4)
  }
})

test_succeeds_windows('CycleGAN model', {
  if(reticulate::py_module_available('upit')) {
    cycle_gan = CycleGAN(3,3,64)
    learn = cycle_learner(dls, cycle_gan)
  }
})






