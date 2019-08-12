.class Lcom/nuance/swype/input/CandidatesListView$4;
.super Ljava/lang/Object;
.source "CandidatesListView.java"

# interfaces
.implements Lcom/nuance/swype/input/CandidatesListView$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/CandidatesListView;->initMapper(I)Lcom/nuance/swype/input/CandidatesListView$Mapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/CandidatesListView;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/CandidatesListView;I)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/nuance/swype/input/CandidatesListView$4;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    iput p2, p0, Lcom/nuance/swype/input/CandidatesListView$4;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 376
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView$4;->val$width:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public map(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "itemWidth"    # I

    .prologue
    .line 380
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView$4;->val$width:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method
