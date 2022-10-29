.class final Lcom/nuance/swype/view/ShowHideAnimManager$1;
.super Ljava/lang/Object;
.source "ShowHideAnimManager.java"

# interfaces
.implements Lcom/nuance/swype/view/ShowHideAnimManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/view/ShowHideAnimManager;->createDefaultListener$378274fe()Lcom/nuance/swype/view/ShowHideAnimManager$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hideVisibility:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 61
    const/16 v0, 0x8

    iput v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager$1;->val$hideVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHideComplete(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    iget v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager$1;->val$hideVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    return-void
.end method
