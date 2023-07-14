.class final Lcom/nuance/swype/util/ContactUtils$2;
.super Ljava/lang/Object;
.source "ContactUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/util/ContactUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ime:Lcom/nuance/swype/input/IME;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/nuance/swype/input/IME;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$number:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$ime:Lcom/nuance/swype/input/IME;

    iput-object p4, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 137
    packed-switch p2, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 140
    :pswitch_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tel:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 141
    .local v1, "DialUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.DIAL"

    invoke-direct {v0, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    .local v0, "DialIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v5, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v0    # "DialIntent":Landroid/content/Intent;
    .end local v1    # "DialUri":Landroid/net/Uri;
    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 151
    :pswitch_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "smsto:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 152
    .local v4, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.SENDTO"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    .local v2, "MsgIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    iget-object v5, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 156
    .end local v2    # "MsgIntent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v5

    invoke-virtual {v5}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v5, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 163
    .local v3, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v3, :cond_0

    .line 164
    iget-object v5, p0, Lcom/nuance/swype/util/ContactUtils$2;->val$name:Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {v3, v5, v6}, Lcom/nuance/swype/input/InputView;->showRemoveUdbWordDialog(Ljava/lang/String;I)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
