.class Lcom/qualcomm/qti/internal/telephony/DynamicSarController$4;
.super Landroid/content/BroadcastReceiver;
.source "DynamicSarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DynamicSarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .line 348
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 351
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    const/4 v2, 0x0

    const-string v3, "plugged"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$902(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;I)I

    .line 354
    const-string v1, "status"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 355
    .local v1, "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_BATTERY_CHANGED: chargeType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$900(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", state= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynamicSarController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$1000(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$900(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 357
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$1100(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V

    .line 359
    .end local v1    # "state":I
    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 360
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$1100(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V

    goto :goto_0

    .line 361
    :cond_2
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 362
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$1200(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V

    .line 364
    :cond_3
    :goto_0
    return-void
.end method
