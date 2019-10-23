.class Lcom/qualcomm/qti/internal/telephony/DynamicSarController$5;
.super Ljava/lang/Thread;
.source "DynamicSarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->startPollCableStatus()V
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

    .line 487
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$1300(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V

    .line 491
    return-void
.end method
