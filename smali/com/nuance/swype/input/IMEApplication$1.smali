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

    .prologue
    .line 204
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
    .line 207
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

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isLicensingOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication$1;->this$0:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->access$100(Lcom/nuance/swype/input/IMEApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication$1;->this$0:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->access$100(Lcom/nuance/swype/input/IMEApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 214
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "IMEApplication uncaughtException:"

    const-string v2, " Process PID:"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication$1;->this$0:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->access$100(Lcom/nuance/swype/input/IMEApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication$1;->this$0:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->access$100(Lcom/nuance/swype/input/IMEApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
