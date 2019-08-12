.class Lcom/nuance/swype/input/settings/PersonalDictionaryActivity$1;
.super Ljava/lang/Object;
.source "PersonalDictionaryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity$1;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity$1;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/PersonalDictionaryActivity;->showDialog(I)V

    .line 19
    return-void
.end method
