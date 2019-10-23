.class Lcom/qualcomm/qti/internal/telephony/DynamicSarController$3;
.super Ljava/lang/Object;
.source "DynamicSarController.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/QcRilHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DynamicSarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onQcRilHookDisconnected()V
    .locals 1

    monitor-enter p0

    .line 227
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$702(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 226
    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/DynamicSarController$3;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onQcRilHookReady()V
    .locals 3

    .line 221
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$702(Z)Z

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "sarState":I
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$100(III)V

    .line 224
    return-void
.end method
