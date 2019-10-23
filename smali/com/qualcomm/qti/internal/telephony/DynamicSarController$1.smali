.class Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;
.super Ljava/lang/Object;
.source "DynamicSarController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

    .line 116
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 119
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "sarState":I
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_a

    const v2, 0x1fa263a

    const/4 v5, 0x0

    if-eq v1, v2, :cond_7

    const v2, 0x1fa2647

    if-eq v1, v2, :cond_0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged unknown event for sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$000(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$400(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)F

    move-result v1

    cmpl-float v1, v1, v5

    const/4 v3, 0x3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$500(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .line 148
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$400(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)F

    move-result v1

    const v5, 0x4604d000    # 8500.0f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .line 149
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$400(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .line 150
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$500(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)F

    move-result v1

    const/high16 v5, 0x44fa0000    # 2000.0f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .line 151
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$500(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_6

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    cmpl-float v1, v1, v5

    if-lez v1, :cond_6

    .line 152
    :cond_5
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v5, v4

    invoke-static {v1, v4}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$402(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;F)F

    .line 153
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v3

    invoke-static {v1, v3}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$502(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;F)F

    .line 154
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$300(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;I)I

    goto :goto_2

    .line 156
    :cond_6
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$402(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;F)F

    .line 157
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$502(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;F)F

    .line 159
    goto :goto_2

    .line 137
    :cond_7
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    cmpl-float v1, v1, v5

    if-nez v1, :cond_8

    .line 138
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v1, v4}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$202(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;Z)Z

    goto :goto_0

    .line 140
    :cond_8
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_9

    .line 141
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v1, v3}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$202(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;Z)Z

    .line 143
    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$300(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;I)I

    .line 144
    goto :goto_2

    .line 126
    :cond_a
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-int v1, v1

    .line 127
    .local v1, "distance":I
    if-lez v1, :cond_b

    .line 128
    const/4 v0, 0x0

    goto :goto_1

    .line 130
    :cond_b
    const/4 v0, 0x2

    .line 132
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Triger SAR state change from PROXIMITY sensor, sarState = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$000(Ljava/lang/String;)V

    .line 133
    invoke-static {v3, v0, v4}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$100(III)V

    .line 134
    nop

    .line 165
    .end local v1    # "distance":I
    :goto_2
    return-void
.end method
