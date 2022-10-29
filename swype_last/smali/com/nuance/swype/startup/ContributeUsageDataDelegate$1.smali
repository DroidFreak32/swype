.class final Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;
.super Ljava/lang/Object;
.source "ContributeUsageDataDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ContributeUsageDataDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ContributeUsageDataDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->getShowRegistrationWarning()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 76
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    invoke-virtual {v2}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1030132

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/nuance/swype/input/R$string;->legal_doc_cud_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->legal_doc_cud_warning:I

    .line 78
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->legal_doc_decline:I

    new-instance v3, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1$1;

    invoke-direct {v3, p0}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1$1;-><init>(Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;)V

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v3, 0x0

    .line 91
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 94
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 96
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3f
    return-void
.end method
