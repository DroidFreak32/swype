.class Lcom/nuance/swype/input/settings/LanguageUpdate$6;
.super Ljava/lang/Object;
.source "LanguageUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageUpdate;->timeoutDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageUpdate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$6;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 348
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 349
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$6;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 350
    return-void
.end method
