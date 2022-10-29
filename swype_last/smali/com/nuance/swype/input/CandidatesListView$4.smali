.class Lcom/nuance/swype/input/CandidatesListView$4;
.super Ljava/lang/Object;
.source "CandidatesListView.java"

# interfaces
.implements Lcom/nuance/swype/input/CandidatesListView$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/CandidatesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/CandidatesListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/CandidatesListView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/CandidatesListView;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/nuance/swype/input/CandidatesListView$4;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(I)I
    .registers 3
    .param p1, "x"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView$4;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method public map(II)I
    .registers 4
    .param p1, "x"    # I
    .param p2, "itemWidth"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView$4;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method
