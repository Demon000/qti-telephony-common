.class public Lcom/qualcomm/qti/internal/telephony/WifiManagerCompatible;
.super Ljava/lang/Object;
.source "WifiManagerCompatible.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNeeded()Z
    .locals 1

    .line 13
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    return v0
.end method

.method public static setSARLimit(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # I

    .line 9
    invoke-static {p0}, Landroid/net/wifi/MiuiWifiManager;->getInstance(Landroid/content/Context;)Landroid/net/wifi/MiuiWifiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/MiuiWifiManager;->setSARLimit(I)V

    .line 10
    return-void
.end method
