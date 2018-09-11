CUDA_VISIBLE_DEVICES=0 \
python train.py \
--train_img_A_path data/monet2photo/trainB/ \
--train_img_B_path data/monet2photo/trainB/ \
--test_img_A_path data/monet2photo/testB/ \
--test_img_B_path data/monet2photo/testB/ \
--input_transform flip \
--experiment_name monet2photo_pretrain \
--batch_size 16 \
--image_size 256 \
--model_type pix2pix \
--kernel_size 4 \
--mse_loss_weight 1. \
--mse_loss_type perceptual \
--gen_num_channels 32 \
--gen_max_channels 128 \
--gen_latent_size 64 \
--gen_num_res_blocks 9 \
--gen_norm_layer none \
--get_upsampling_layer conv_transpose \
--adv_loss_weight 0. \
--enc_type vgg19_pytorch_modified \
--num_epoch 50 \
--epoch_len 1000