.class public final Lcom/fsck/k9/FontSizes;
.super Ljava/lang/Object;
.source "FontSizes.java"


# instance fields
.field accountDescription:I

.field accountName:I

.field folderName:I

.field folderStatus:I

.field messageListDate:I

.field messageListSender:I

.field messageListSubject:I

.field messageViewAdditionalHeaders:I

.field messageViewCC:I

.field messageViewDate:I

.field messageViewSender:I

.field messageViewSubject:I

.field messageViewTime:I

.field messageViewTo:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0xc

    const/16 v1, 0xe

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    .line 125
    const/16 v0, 0x12

    iput v0, p0, Lcom/fsck/k9/FontSizes;->accountName:I

    .line 126
    iput v1, p0, Lcom/fsck/k9/FontSizes;->accountDescription:I

    .line 128
    const/16 v0, 0x16

    iput v0, p0, Lcom/fsck/k9/FontSizes;->folderName:I

    .line 129
    iput v1, p0, Lcom/fsck/k9/FontSizes;->folderStatus:I

    .line 131
    iput v1, p0, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    .line 132
    iput v1, p0, Lcom/fsck/k9/FontSizes;->messageListSender:I

    .line 133
    iput v1, p0, Lcom/fsck/k9/FontSizes;->messageListDate:I

    .line 135
    iput v1, p0, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    .line 136
    iput v2, p0, Lcom/fsck/k9/FontSizes;->messageViewTo:I

    .line 137
    iput v2, p0, Lcom/fsck/k9/FontSizes;->messageViewCC:I

    .line 138
    iput v2, p0, Lcom/fsck/k9/FontSizes;->messageViewAdditionalHeaders:I

    .line 139
    iput v2, p0, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    .line 140
    iput v3, p0, Lcom/fsck/k9/FontSizes;->messageViewTime:I

    .line 141
    iput v3, p0, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    .line 142
    return-void
.end method
