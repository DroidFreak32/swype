.class Lcom/nuance/swype/input/about/TermsOfServiceConnect$1;
.super Ljava/lang/Object;
.source "TermsOfServiceConnect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/about/TermsOfServiceConnect;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/about/TermsOfServiceConnect;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/about/TermsOfServiceConnect;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/nuance/swype/input/about/TermsOfServiceConnect$1;->this$0:Lcom/nuance/swype/input/about/TermsOfServiceConnect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/swype/input/about/TermsOfServiceConnect$1;->this$0:Lcom/nuance/swype/input/about/TermsOfServiceConnect;

    invoke-virtual {v0}, Lcom/nuance/swype/input/about/TermsOfServiceConnect;->finish()V

    .line 27
    return-void
.end method
