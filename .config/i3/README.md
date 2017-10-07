# Required Programs 
* i3-gaps -- requires compilation
* i3blocks
* feh
* polybar
* scrot
* convert
* gsimplecal

# For Adding i3lock to Laptop Close
(see https://faq.i3wm.org/question/6665/lockscreen-after-closing-my-laptop.1.html)
sudo cp ~/.config/i3/i3lock.service /etc/systemd/system/
systemctl enable i3lock.service
