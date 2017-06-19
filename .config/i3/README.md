# https://faq.i3wm.org/question/6665/lockscreen-after-closing-my-laptop.1.html
sudo cp ~/.config/i3/i3lock.service /etc/systemd/system/
systemctl enable i3lock.service
