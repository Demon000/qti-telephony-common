.class public Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;
.super Lcom/android/internal/telephony/MultiSimSettingController;
.source "QtiMultiSimSettingController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QtiMultiSimSettingController"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sc"    # Lcom/android/internal/telephony/SubscriptionController;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)V

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;
    .locals 1

    .line 48
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)Lcom/android/internal/telephony/MultiSimSettingController;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sc"    # Lcom/android/internal/telephony/SubscriptionController;

    .line 32
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;

    .line 35
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    goto :goto_0

    .line 37
    :cond_0
    const-string v1, "QtiMultiSimSettingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    return-object v0

    .line 39
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected disableDataForNonDefaultNonOpportunisticSubscriptions()V
    .locals 1

    .line 53
    const-string v0, "disableDataForNonDefaultNonOpportunisticSubscriptions - do nothing"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 100
    const-string v0, "QtiMultiSimSettingController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method protected declared-synchronized onUserDataEnabled(IZ)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    monitor-enter p0

    .line 57
    :try_start_0
    const-string v0, "onUserDataEnabled"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->setUserDataEnabledForGroup(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 56
    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;
    .end local p1    # "subId":I
    .end local p2    # "enable":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setUserDataEnabledForGroup(IZ)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    monitor-enter p0

    .line 68
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserDataEnabledForGroup subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 70
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getGroupUuid(I)Landroid/os/ParcelUuid;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 75
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 76
    .local v3, "currentSubId":I
    if-ne v3, p1, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 80
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 81
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v4, :cond_2

    .line 82
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setUserDataEnabled(Z)V

    .line 84
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;
    :cond_2
    goto :goto_1

    .line 86
    :cond_3
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v5, "mobile_data"

    invoke-static {v4, v5, v3, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .end local v2    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "currentSubId":I
    :goto_1
    goto :goto_0

    .line 90
    :cond_4
    monitor-exit p0

    return-void

    .line 67
    .end local v0    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local p1    # "subId":I
    .end local p2    # "enable":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected updateDefaults(Z)V
    .locals 2
    .param p1, "init"    # Z

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDefaults "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 97
    return-void
.end method
