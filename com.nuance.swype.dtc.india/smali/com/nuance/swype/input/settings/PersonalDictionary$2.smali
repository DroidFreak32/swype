.class Lcom/nuance/swype/input/settings/PersonalDictionary$2;
.super Ljava/lang/Object;
.source "PersonalDictionary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/PersonalDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/PersonalDictionary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/PersonalDictionary;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary$2;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary$2;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->access$300(Lcom/nuance/swype/input/settings/PersonalDictionary;)V

    .line 202
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary$2;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/PersonalDictionary;->access$402(Lcom/nuance/swype/input/settings/PersonalDictionary;Z)Z

    .line 203
    return-void
.end method
