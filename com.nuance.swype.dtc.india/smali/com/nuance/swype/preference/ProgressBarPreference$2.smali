.class public final Lcom/nuance/swype/preference/ProgressBarPreference$2;
.super Ljava/lang/Object;
.source "ProgressBarPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/preference/ProgressBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/preference/ProgressBarPreference;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/preference/ProgressBarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/preference/ProgressBarPreference;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/nuance/swype/preference/ProgressBarPreference$2;->this$0:Lcom/nuance/swype/preference/ProgressBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference$2;->this$0:Lcom/nuance/swype/preference/ProgressBarPreference;

    invoke-static {v0}, Lcom/nuance/swype/preference/ProgressBarPreference;->access$000(Lcom/nuance/swype/preference/ProgressBarPreference;)Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/preference/ProgressBarPreference$2;->this$0:Lcom/nuance/swype/preference/ProgressBarPreference;

    invoke-interface {v0, v1}, Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;->onCancel(Lcom/nuance/swype/preference/ProgressBarPreference;)V

    .line 165
    return-void
.end method
