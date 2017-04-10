from i3pystatus import Status

status = Status()

status.register("clock",
        format="%a %-d %b %X",)

status.register("battery",
    format="{status} {remaining:%E%hh:%Mm}",
    alert=True,
    alert_percentage=5,
    status={
        "DIS":  "Discharging",
        "CHR":  "Charging",
        "FULL": "Bat full",
    },)

status.register("network",
    interface="wlp4s0",
    format_up="{essid} {quality:03.0f}%",)

status.register("pulseaudio",
    format="♪{volume}",)
