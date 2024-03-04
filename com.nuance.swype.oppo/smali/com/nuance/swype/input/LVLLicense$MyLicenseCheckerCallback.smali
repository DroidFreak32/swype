.class Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "LVLLicense.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/LVLLicense;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/LVLLicense;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/LVLLicense;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;->this$0:Lcom/nuance/swype/input/LVLLicense;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 87
    monitor-enter p0

    .line 88
    const/16 v0, 0x123

    if-ne v0, p1, :cond_0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;->this$0:Lcom/nuance/swype/input/LVLLicense;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/LVLLicense;->access$002(Lcom/nuance/swype/input/LVLLicense;Z)Z

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;->this$0:Lcom/nuance/swype/input/LVLLicense;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/LVLLicense;->access$102(Lcom/nuance/swype/input/LVLLicense;Z)Z

    .line 95
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;->this$0:Lcom/nuance/swype/input/LVLLicense;

    invoke-static {v0}, Lcom/nuance/swype/input/LVLLicense;->access$200(Lcom/nuance/swype/input/LVLLicense;)V

    .line 97
    return-void

    .line 92
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;->this$0:Lcom/nuance/swype/input/LVLLicense;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/LVLLicense;->access$002(Lcom/nuance/swype/input/LVLLicense;Z)Z

    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;->this$0:Lcom/nuance/swype/input/LVLLicense;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/LVLLicense;->access$102(Lcom/nuance/swype/input/LVLLicense;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public applicationError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;->this$0:Lcom/nuance/swype/input/LVLLicense;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/LVLLicense;->access$002(Lcom/nuance/swype/input/LVLLicense;Z)Z

    .line 123
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;->this$0:Lcom/nuance/swype/input/LVLLicense;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/LVLLicense;->access$102(Lcom/nuance/swype/input/LVLLicense;Z)Z

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;->this$0:Lcom/nuance/swype/input/LVLLicense;

    invoke-static {v0}, Lcom/nuance/swype/input/LVLLicense;->access$200(Lcom/nuance/swype/input/LVLLicense;)V

    .line 126
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dontAllow(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 104
    monitor-enter p0

    .line 105
    const/16 v0, 0x123

    if-ne v0, p1, :cond_0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;->this$0:Lcom/nuance/swype/input/LVLLicense;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/LVLLicense;->access$002(Lcom/nuance/swype/input/LVLLicense;Z)Z

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;->this$0:Lcom/nuance/swype/input/LVLLicense;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/LVLLicense;->access$102(Lcom/nuance/swype/input/LVLLicense;Z)Z

    .line 112
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;->this$0:Lcom/nuance/swype/input/LVLLicense;

    invoke-static {v0}, Lcom/nuance/swype/input/LVLLicense;->access$200(Lcom/nuance/swype/input/LVLLicense;)V

    .line 114
    return-void

    .line 109
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;->this$0:Lcom/nuance/swype/input/LVLLicense;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/LVLLicense;->access$002(Lcom/nuance/swype/input/LVLLicense;Z)Z

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/input/LVLLicense$MyLicenseCheckerCallback;->this$0:Lcom/nuance/swype/input/LVLLicense;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/LVLLicense;->access$102(Lcom/nuance/swype/input/LVLLicense;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
