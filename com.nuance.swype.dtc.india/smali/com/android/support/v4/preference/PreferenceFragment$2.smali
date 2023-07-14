.class final Lcom/android/support/v4/preference/PreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/v4/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/v4/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/support/v4/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/v4/preference/PreferenceFragment;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/support/v4/preference/PreferenceFragment$2;->this$0:Lcom/android/support/v4/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/support/v4/preference/PreferenceFragment$2;->this$0:Lcom/android/support/v4/preference/PreferenceFragment;

    invoke-static {v0}, Lcom/android/support/v4/preference/PreferenceFragment;->access$100(Lcom/android/support/v4/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/support/v4/preference/PreferenceFragment$2;->this$0:Lcom/android/support/v4/preference/PreferenceFragment;

    invoke-static {v1}, Lcom/android/support/v4/preference/PreferenceFragment;->access$100(Lcom/android/support/v4/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 69
    return-void
.end method
