.class final Lcom/localytics/android/InboxCampaign$1;
.super Ljava/lang/Object;
.source "InboxCampaign.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/InboxCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/localytics/android/InboxCampaign;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/localytics/android/InboxCampaign;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 406
    new-instance v0, Lcom/localytics/android/InboxCampaign;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/localytics/android/InboxCampaign;-><init>(Landroid/os/Parcel;Lcom/localytics/android/InboxCampaign$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/localytics/android/InboxCampaign$1;->createFromParcel(Landroid/os/Parcel;)Lcom/localytics/android/InboxCampaign;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/localytics/android/InboxCampaign;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 411
    new-array v0, p1, [Lcom/localytics/android/InboxCampaign;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/localytics/android/InboxCampaign$1;->newArray(I)[Lcom/localytics/android/InboxCampaign;

    move-result-object v0

    return-object v0
.end method
