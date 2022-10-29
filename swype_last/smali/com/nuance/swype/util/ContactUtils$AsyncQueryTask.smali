.class final Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;
.super Landroid/os/AsyncTask;
.source "ContactUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/util/ContactUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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
    .registers 1

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 181
    check-cast p1, [Ljava/lang/String;

    .line 2185
    invoke-virtual {p0}, Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2186
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 2188
    :cond_a
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/nuance/swype/util/ContactUtils;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method protected final onCancelled()V
    .registers 5

    .prologue
    .line 198
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$202$6263c3eb()Landroid/content/Context;

    .line 199
    # getter for: Lcom/nuance/swype/util/ContactUtils;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "AsyncQueryTask onCancelled complete."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 181
    check-cast p1, Ljava/lang/String;

    .line 1204
    invoke-virtual {p0}, Lcom/nuance/swype/util/ContactUtils$AsyncQueryTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1207
    if-eqz p1, :cond_22

    .line 1208
    # getter for: Lcom/nuance/swype/util/ContactUtils;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$200()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/nuance/swype/util/ContactUtils;->contactName:Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/nuance/swype/util/ContactUtils;->access$500(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    :cond_15
    :goto_15
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$202$6263c3eb()Landroid/content/Context;

    .line 1220
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$402$16915f7f()Ljava/lang/String;

    .line 1221
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$602$134621()I

    .line 1222
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$700()V

    .line 1212
    :cond_21
    return-void

    .line 1210
    :cond_22
    # getter for: Lcom/nuance/swype/util/ContactUtils;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 1211
    if-eqz v0, :cond_21

    .line 1214
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 1215
    if-eqz v0, :cond_15

    .line 1216
    # getter for: Lcom/nuance/swype/util/ContactUtils;->contactName:Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$400()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/nuance/swype/util/ContactUtils;->wordSource:I
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->access$600()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/InputView;->showRemoveUdbWordDialog(Ljava/lang/String;I)V

    goto :goto_15
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 181
    return-void
.end method
