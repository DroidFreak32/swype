.class public Lcom/facebook/share/internal/ShareFeedContent;
.super Lcom/facebook/share/model/ShareContent;
.source "ShareFeedContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/ShareFeedContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent",
        "<",
        "Lcom/facebook/share/internal/ShareFeedContent;",
        "Lcom/facebook/share/internal/ShareFeedContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/internal/ShareFeedContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final link:Ljava/lang/String;

.field private final linkCaption:Ljava/lang/String;

.field private final linkDescription:Ljava/lang/String;

.field private final linkName:Ljava/lang/String;

.field private final mediaSource:Ljava/lang/String;

.field private final picture:Ljava/lang/String;

.field private final toId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    new-instance v0, Lcom/facebook/share/internal/ShareFeedContent$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/ShareFeedContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/ShareFeedContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->toId:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->link:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkCaption:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkDescription:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->picture:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->mediaSource:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/internal/ShareFeedContent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/internal/ShareFeedContent$Builder;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 45
    # getter for: Lcom/facebook/share/internal/ShareFeedContent$Builder;->toId:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->access$000(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->toId:Ljava/lang/String;

    .line 46
    # getter for: Lcom/facebook/share/internal/ShareFeedContent$Builder;->link:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->access$100(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->link:Ljava/lang/String;

    .line 47
    # getter for: Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkName:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->access$200(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkName:Ljava/lang/String;

    .line 48
    # getter for: Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkCaption:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->access$300(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkCaption:Ljava/lang/String;

    .line 49
    # getter for: Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkDescription:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->access$400(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkDescription:Ljava/lang/String;

    .line 50
    # getter for: Lcom/facebook/share/internal/ShareFeedContent$Builder;->picture:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->access$500(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->picture:Ljava/lang/String;

    .line 51
    # getter for: Lcom/facebook/share/internal/ShareFeedContent$Builder;->mediaSource:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->access$600(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->mediaSource:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/ShareFeedContent$Builder;Lcom/facebook/share/internal/ShareFeedContent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .param p2, "x1"    # Lcom/facebook/share/internal/ShareFeedContent$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/ShareFeedContent;-><init>(Lcom/facebook/share/internal/ShareFeedContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkCaption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->mediaSource:Ljava/lang/String;

    return-object v0
.end method

.method public getPicture()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->picture:Ljava/lang/String;

    return-object v0
.end method

.method public getToId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->toId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 99
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->toId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkCaption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->picture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->mediaSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return-void
.end method
