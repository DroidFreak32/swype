.class final Lcom/nuance/swype/preference/ProgressBarPreference$1;
.super Ljava/lang/Object;
.source "ProgressBarPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/preference/ProgressBarPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/preference/ProgressBarPreference;


# direct methods
.method constructor <init>(Lcom/nuance/swype/preference/ProgressBarPreference;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/preference/ProgressBarPreference;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/nuance/swype/preference/ProgressBarPreference$1;->this$0:Lcom/nuance/swype/preference/ProgressBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference$1;->this$0:Lcom/nuance/swype/preference/ProgressBarPreference;

    # getter for: Lcom/nuance/swype/preference/ProgressBarPreference;->cancelListener:Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;
    invoke-static {v0}, Lcom/nuance/swype/preference/ProgressBarPreference;->access$000(Lcom/nuance/swype/preference/ProgressBarPreference;)Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/preference/ProgressBarPreference$1;->this$0:Lcom/nuance/swype/preference/ProgressBarPreference;

    invoke-interface {v0, v1}, Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;->onCancel(Lcom/nuance/swype/preference/ProgressBarPreference;)V

    .line 104
    return-void
.end method
