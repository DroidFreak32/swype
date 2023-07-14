.class Lcom/nuance/swype/input/IMEApplication$1;
.super Ljava/lang/Object;
.source "IMEApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/IMEApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/IMEApplication;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/IMEApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/IMEApplication;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/nuance/swype/input/IMEApplication$1;->this$0:Lcom/nuance/swype/input/IMEApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "paramThread"    # Ljava/lang/Thread;
    .param p2, "paramThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 258
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication$1;->this$0:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->access$000(Lcom/nuance/swype/input/IMEApplication;)Lcom/nuance/swype/input/IME;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication$1;->this$0:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->access$000(Lcom/nuance/swype/input/IMEApplication;)Lcom/nuance/swype/input/IME;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

    .line 259
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isLicensingOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication$1;->this$0:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->access$100(Lcom/nuance/swype/input/IMEApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication$1;->this$0:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->access$100(Lcom/nuance/swype/input/IMEApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 265
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "IMEApplication uncaughtException:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " Process PID:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 266
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 265
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 267
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication$1;->this$0:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->access$100(Lcom/nuance/swype/input/IMEApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication$1;->this$0:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->access$100(Lcom/nuance/swype/input/IMEApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
