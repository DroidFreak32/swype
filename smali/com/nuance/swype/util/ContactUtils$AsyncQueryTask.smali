.class final Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;
.super Landroid/os/AsyncTask;
.source "ContactUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/util/ContactUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 163
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/nuance/swype/util/ContactUtils;->getInfoFromPhoneBook(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final onCancelled()V
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$102$6263c3eb()Landroid/content/Context;

    .line 181
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$200()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "AsyncQueryTask onCancelled complete."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 163
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/nuance/swype/util/ContactUtils;->showIntentOption$7555e5c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$102$6263c3eb()Landroid/content/Context;

    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$302$16915f7f()Ljava/lang/String;

    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$402$134621()I

    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->resetQueryTask()V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$400()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/InputView;->showRemoveUdbWordDialog(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 163
    return-void
.end method
