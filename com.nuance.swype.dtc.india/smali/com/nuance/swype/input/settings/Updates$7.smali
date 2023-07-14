.class Lcom/nuance/swype/input/settings/Updates$7;
.super Landroid/os/AsyncTask;
.source "Updates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/Updates;->installUpgrade()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Updates;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/Updates;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Updates$7;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 334
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/Updates$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$7;->this$0:Lcom/nuance/swype/input/settings/Updates;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/Updates;->access$502(Lcom/nuance/swype/input/settings/Updates;Z)Z

    .line 338
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$7;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/Updates;->access$800(Lcom/nuance/swype/input/settings/Updates;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->installUpdate()V

    .line 339
    const/4 v0, 0x0

    return-object v0
.end method
