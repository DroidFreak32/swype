.class public final Lcom/facebook/share/internal/ShareInternalUtility;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"


# static fields
.field public static final MY_PHOTOS:Ljava/lang/String; = "me/photos"

.field private static final MY_STAGING_RESOURCES:Ljava/lang/String; = "me/staging_resources"

.field private static final STAGING_PARAM:Ljava/lang/String; = "file"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .registers 3
    .param p0, "x0"    # Ljava/util/UUID;
    .param p1, "x1"    # Lcom/facebook/share/model/ShareMedia;

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->getAttachment(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v0

    return-object v0
.end method

.method private static getAppCallFromActivityResult(IILandroid/content/Intent;)Lcom/facebook/internal/AppCall;
    .registers 5
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 219
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->getCallIdFromIntent(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v0

    .line 220
    .local v0, "callId":Ljava/util/UUID;
    if-nez v0, :cond_8

    .line 221
    const/4 v1, 0x0

    .line 224
    :goto_7
    return-object v1

    :cond_8
    invoke-static {v0, p0}, Lcom/facebook/internal/AppCall;->finishPendingCall(Ljava/util/UUID;I)Lcom/facebook/internal/AppCall;

    move-result-object v1

    goto :goto_7
.end method

.method private static getAttachment(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .registers 7
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "medium"    # Lcom/facebook/share/model/ShareMedia;

    .prologue
    .line 517
    const/4 v1, 0x0

    .line 518
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 520
    .local v3, "uri":Landroid/net/Uri;
    instance-of v4, p1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v4, :cond_19

    move-object v2, p1

    .line 521
    check-cast v2, Lcom/facebook/share/model/SharePhoto;

    .line 522
    .local v2, "photo":Lcom/facebook/share/model/SharePhoto;
    invoke-virtual {v2}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 523
    invoke-virtual {v2}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v3

    .line 529
    .end local v2    # "photo":Lcom/facebook/share/model/SharePhoto;
    .end local p1    # "medium":Lcom/facebook/share/model/ShareMedia;
    :cond_11
    :goto_11
    const/4 v0, 0x0

    .line 530
    .local v0, "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    if-eqz v1, :cond_24

    .line 531
    invoke-static {p0, v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v0

    .line 540
    :cond_18
    :goto_18
    return-object v0

    .line 524
    .end local v0    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .restart local p1    # "medium":Lcom/facebook/share/model/ShareMedia;
    :cond_19
    instance-of v4, p1, Lcom/facebook/share/model/ShareVideo;

    if-eqz v4, :cond_11

    .line 525
    check-cast p1, Lcom/facebook/share/model/ShareVideo;

    .line 526
    .end local p1    # "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v3

    goto :goto_11

    .line 534
    .restart local v0    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    :cond_24
    if-eqz v3, :cond_18

    .line 535
    invoke-static {p0, v3}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/net/Uri;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v0

    goto :goto_18
.end method

.method public static getFieldNameAndNamespaceFromFullName(Ljava/lang/String;)Landroid/util/Pair;
    .registers 6
    .param p0, "fullName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    const/4 v2, 0x0

    .line 504
    .local v2, "namespace":Ljava/lang/String;
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 505
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_23

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-le v3, v4, :cond_23

    .line 506
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 507
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "fieldName":Ljava/lang/String;
    :goto_1d
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 509
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_23
    move-object v0, p0

    .restart local v0    # "fieldName":Ljava/lang/String;
    goto :goto_1d
.end method

.method public static getMediaInfos(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/UUID;)Ljava/util/List;
    .registers 6
    .param p0, "mediaContent"    # Lcom/facebook/share/model/ShareMediaContent;
    .param p1, "appCallId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareMediaContent;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMediaContent;->getMedia()Ljava/util/List;

    move-result-object v1

    .local v1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    if-nez v1, :cond_a

    .line 320
    .end local v1    # "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    :cond_8
    const/4 v2, 0x0

    .line 345
    :goto_9
    return-object v2

    .line 323
    .restart local v1    # "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v0, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    new-instance v3, Lcom/facebook/share/internal/ShareInternalUtility$6;

    invoke-direct {v3, p1, v0}, Lcom/facebook/share/internal/ShareInternalUtility$6;-><init>(Ljava/util/UUID;Ljava/util/List;)V

    invoke-static {v1, v3}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object v2

    .line 343
    .local v2, "mediaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    goto :goto_9
.end method

.method public static getMostSpecificObjectType(Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/widget/LikeView$ObjectType;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .registers 3
    .param p0, "objectType1"    # Lcom/facebook/share/widget/LikeView$ObjectType;
    .param p1, "objectType2"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 707
    if-ne p0, p1, :cond_3

    .line 717
    .end local p0    # "objectType1":Lcom/facebook/share/widget/LikeView$ObjectType;
    :cond_2
    :goto_2
    return-object p0

    .line 711
    .restart local p0    # "objectType1":Lcom/facebook/share/widget/LikeView$ObjectType;
    :cond_3
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-ne p0, v0, :cond_9

    move-object p0, p1

    .line 712
    goto :goto_2

    .line 713
    :cond_9
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-eq p1, v0, :cond_2

    .line 717
    const/4 p0, 0x0

    goto :goto_2
.end method

.method public static getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .param p0, "result"    # Landroid/os/Bundle;

    .prologue
    .line 128
    const-string/jumbo v0, "completionGesture"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 129
    const-string/jumbo v0, "completionGesture"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_10
    return-object v0

    :cond_11
    const-string/jumbo v0, "com.facebook.platform.extra.COMPLETION_GESTURE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public static getPhotoUrls(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;
    .registers 6
    .param p0, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;
    .param p1, "appCallId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/SharePhotoContent;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v2

    .local v2, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    if-nez v2, :cond_a

    .line 272
    .end local v2    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    :cond_8
    const/4 v0, 0x0

    .line 295
    :goto_9
    return-object v0

    .line 275
    .restart local v2    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    :cond_a
    new-instance v3, Lcom/facebook/share/internal/ShareInternalUtility$4;

    invoke-direct {v3, p1}, Lcom/facebook/share/internal/ShareInternalUtility$4;-><init>(Ljava/util/UUID;)V

    invoke-static {v2, v3}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object v1

    .line 284
    .local v1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    new-instance v3, Lcom/facebook/share/internal/ShareInternalUtility$5;

    invoke-direct {v3}, Lcom/facebook/share/internal/ShareInternalUtility$5;-><init>()V

    invoke-static {v1, v3}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object v0

    .line 293
    .local v0, "attachmentUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    goto :goto_9
.end method

.method public static getShareDialogPostId(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .param p0, "result"    # Landroid/os/Bundle;

    .prologue
    .line 142
    const-string/jumbo v0, "postId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 143
    const-string/jumbo v0, "postId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_10
    return-object v0

    .line 145
    :cond_11
    const-string/jumbo v0, "com.facebook.platform.extra.POST_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 146
    const-string/jumbo v0, "com.facebook.platform.extra.POST_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 148
    :cond_22
    const-string/jumbo v0, "post_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public static getShareResultProcessor(Lcom/facebook/FacebookCallback;)Lcom/facebook/share/internal/ResultProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)",
            "Lcom/facebook/share/internal/ResultProcessor;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v0, Lcom/facebook/share/internal/ShareInternalUtility$1;

    invoke-direct {v0, p0, p0}, Lcom/facebook/share/internal/ShareInternalUtility$1;-><init>(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V

    return-object v0
.end method

.method public static getVideoUrl(Lcom/facebook/share/model/ShareVideoContent;Ljava/util/UUID;)Ljava/lang/String;
    .registers 5
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "appCallId"    # Ljava/util/UUID;

    .prologue
    .line 299
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v2

    if-nez v2, :cond_a

    .line 300
    :cond_8
    const/4 v2, 0x0

    .line 312
    :goto_9
    return-object v2

    .line 303
    :cond_a
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/net/Uri;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v0

    .line 308
    .local v0, "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    .local v1, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    .line 312
    invoke-virtual {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_9
.end method

.method public static handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z
    .registers 9
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "resultProcessor"    # Lcom/facebook/share/internal/ResultProcessor;

    .prologue
    const/4 v3, 0x1

    .line 156
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->getAppCallFromActivityResult(IILandroid/content/Intent;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 157
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    if-nez v0, :cond_9

    .line 158
    const/4 v3, 0x0

    .line 180
    :cond_8
    :goto_8
    return v3

    .line 161
    :cond_9
    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->cleanupAttachmentsForCall(Ljava/util/UUID;)V

    .line 162
    if-eqz p3, :cond_8

    .line 166
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->getErrorDataFromResultIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/NativeProtocol;->getExceptionFromErrorData(Landroid/os/Bundle;)Lcom/facebook/FacebookException;

    move-result-object v1

    .line 168
    .local v1, "exception":Lcom/facebook/FacebookException;
    if-eqz v1, :cond_28

    .line 169
    instance-of v4, v1, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v4, :cond_24

    .line 170
    invoke-virtual {p3, v0}, Lcom/facebook/share/internal/ResultProcessor;->onCancel(Lcom/facebook/internal/AppCall;)V

    goto :goto_8

    .line 172
    :cond_24
    invoke-virtual {p3, v0, v1}, Lcom/facebook/share/internal/ResultProcessor;->onError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    goto :goto_8

    .line 176
    :cond_28
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->getSuccessResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    .line 177
    .local v2, "results":Landroid/os/Bundle;
    invoke-virtual {p3, v0, v2}, Lcom/facebook/share/internal/ResultProcessor;->onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V

    goto :goto_8
.end method

.method public static invokeCallbackWithError(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_a

    .line 90
    check-cast p1, Lcom/facebook/FacebookException;

    .end local p1    # "exception":Ljava/lang/Exception;
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookException;)V

    .line 96
    :goto_9
    return-void

    .line 93
    .restart local p1    # "exception":Ljava/lang/Exception;
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Error preparing share content: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithError(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static invokeCallbackWithResults(Lcom/facebook/FacebookCallback;Ljava/lang/String;Lcom/facebook/GraphResponse;)V
    .registers 6
    .param p1, "postId"    # Ljava/lang/String;
    .param p2, "graphResponse"    # Lcom/facebook/GraphResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 109
    .local v1, "requestError":Lcom/facebook/FacebookRequestError;
    if-eqz v1, :cond_17

    .line 110
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 112
    const-string/jumbo v0, "Unexpected error sharing."

    .line 114
    :cond_13
    invoke-static {p0, p2, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    .line 118
    .end local v0    # "errorMessage":Ljava/lang/String;
    :goto_16
    return-void

    .line 116
    :cond_17
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnSuccessCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    goto :goto_16
.end method

.method static invokeOnCancelCallback(Lcom/facebook/FacebookCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    const-string/jumbo v0, "cancelled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    if-eqz p0, :cond_c

    .line 546
    invoke-interface {p0}, Lcom/facebook/FacebookCallback;->onCancel()V

    .line 548
    :cond_c
    return-void
.end method

.method static invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookException;)V
    .registers 4
    .param p1, "ex"    # Lcom/facebook/FacebookException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Lcom/facebook/FacebookException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    const-string/jumbo v0, "error"

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    if-eqz p0, :cond_f

    .line 584
    invoke-interface {p0, p1}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    .line 586
    :cond_f
    return-void
.end method

.method static invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/GraphResponse;Ljava/lang/String;)V
    .registers 4
    .param p1, "response"    # Lcom/facebook/GraphResponse;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Lcom/facebook/GraphResponse;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    const-string/jumbo v0, "error"

    invoke-static {v0, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    if-eqz p0, :cond_10

    .line 565
    new-instance v0, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v0, p1, p2}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    .line 567
    :cond_10
    return-void
.end method

.method static invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    const-string/jumbo v0, "error"

    invoke-static {v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    if-eqz p0, :cond_10

    .line 575
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    .line 577
    :cond_10
    return-void
.end method

.method static invokeOnSuccessCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "postId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    const-string/jumbo v0, "succeeded"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    if-eqz p0, :cond_11

    .line 555
    new-instance v0, Lcom/facebook/share/Sharer$Result;

    invoke-direct {v0, p1}, Lcom/facebook/share/Sharer$Result;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    .line 557
    :cond_11
    return-void
.end method

.method private static logShareResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "shareOutcome"    # Ljava/lang/String;
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 589
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 590
    invoke-static {v2}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 591
    .local v0, "logger":Lcom/facebook/appevents/AppEventsLogger;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 592
    .local v1, "parameters":Landroid/os/Bundle;
    const-string/jumbo v2, "fb_share_dialog_outcome"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    if-eqz p1, :cond_1b

    .line 598
    const-string/jumbo v2, "error_message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_1b
    const-string/jumbo v2, "fb_share_dialog_result"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 601
    return-void
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/graphics/Bitmap;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 9
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .prologue
    .line 619
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 620
    .local v3, "parameters":Landroid/os/Bundle;
    const-string/jumbo v0, "file"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 622
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string/jumbo v2, "me/staging_resources"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 10
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 682
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Ljava/io/File;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 695
    :goto_13
    return-object v0

    .line 686
    :cond_14
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 687
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "The image Uri must be either a file:// or content:// Uri"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_23
    new-instance v6, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string/jumbo v0, "image/png"

    invoke-direct {v6, p1, v0}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 692
    .local v6, "resourceWithMimeType":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;, "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType<Landroid/net/Uri;>;"
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 693
    .local v3, "parameters":Landroid/os/Bundle;
    const-string/jumbo v0, "file"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 695
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string/jumbo v2, "me/staging_resources"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    goto :goto_13
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Ljava/io/File;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 11
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 648
    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 650
    .local v6, "descriptor":Landroid/os/ParcelFileDescriptor;
    new-instance v7, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string/jumbo v0, "image/png"

    invoke-direct {v7, v6, v0}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 652
    .local v7, "resourceWithMimeType":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;, "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 653
    .local v3, "parameters":Landroid/os/Bundle;
    const-string/jumbo v0, "file"

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 655
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string/jumbo v2, "me/staging_resources"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method public static registerSharerCallback(ILcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .registers 5
    .param p0, "requestCode"    # I
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-nez v0, :cond_d

    .line 249
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_d
    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    .end local p1    # "callbackManager":Lcom/facebook/CallbackManager;
    new-instance v0, Lcom/facebook/share/internal/ShareInternalUtility$3;

    invoke-direct {v0, p0, p2}, Lcom/facebook/share/internal/ShareInternalUtility$3;-><init>(ILcom/facebook/FacebookCallback;)V

    invoke-virtual {p1, p0, v0}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 265
    return-void
.end method

.method public static registerStaticShareCallback(I)V
    .registers 2
    .param p0, "requestCode"    # I

    .prologue
    .line 229
    new-instance v0, Lcom/facebook/share/internal/ShareInternalUtility$2;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/ShareInternalUtility$2;-><init>(I)V

    invoke-static {p0, v0}, Lcom/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 242
    return-void
.end method

.method public static removeNamespacesFromOGJsonArray(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;
    .registers 6
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "requireNamespace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 437
    .local v1, "newArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 438
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 439
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_20

    .line 440
    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonArray(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v2

    .line 444
    :cond_1a
    :goto_1a
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 441
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_20
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1a

    .line 442
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v2

    .local v2, "value":Lorg/json/JSONObject;
    goto :goto_1a

    .line 447
    .end local v2    # "value":Lorg/json/JSONObject;
    :cond_2b
    return-object v1
.end method

.method public static removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .registers 13
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "requireNamespace"    # Z

    .prologue
    .line 453
    if-nez p0, :cond_4

    .line 454
    const/4 v7, 0x0

    .line 495
    :cond_3
    :goto_3
    return-object v7

    .line 458
    :cond_4
    :try_start_4
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 459
    .local v7, "newJsonObject":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 460
    .local v0, "data":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    .line 461
    .local v5, "names":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_87

    .line 462
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 464
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 465
    .local v8, "value":Ljava/lang/Object;
    instance-of v9, v8, Lorg/json/JSONObject;

    if-eqz v9, :cond_4b

    .line 466
    check-cast v8, Lorg/json/JSONObject;

    .end local v8    # "value":Ljava/lang/Object;
    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v8

    .line 471
    :cond_2c
    :goto_2c
    invoke-static {v4}, Lcom/facebook/share/internal/ShareInternalUtility;->getFieldNameAndNamespaceFromFullName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 473
    .local v2, "fieldNameAndNamespace":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 474
    .local v6, "namespace":Ljava/lang/String;
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 476
    .local v1, "fieldName":Ljava/lang/String;
    if-eqz p1, :cond_74

    .line 477
    if-eqz v6, :cond_57

    const-string/jumbo v9, "fbsdk"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 478
    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 467
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v2    # "fieldNameAndNamespace":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "namespace":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_4b
    instance-of v9, v8, Lorg/json/JSONArray;

    if-eqz v9, :cond_2c

    .line 468
    check-cast v8, Lorg/json/JSONArray;

    .end local v8    # "value":Ljava/lang/Object;
    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonArray(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v8

    .local v8, "value":Lorg/json/JSONArray;
    goto :goto_2c

    .line 479
    .end local v8    # "value":Lorg/json/JSONArray;
    .restart local v1    # "fieldName":Ljava/lang/String;
    .restart local v2    # "fieldNameAndNamespace":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "namespace":Ljava/lang/String;
    :cond_57
    if-eqz v6, :cond_62

    const-string/jumbo v9, "og"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_70

    .line 480
    :cond_62
    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_65} :catch_66

    goto :goto_48

    .line 497
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v2    # "fieldNameAndNamespace":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "names":Lorg/json/JSONArray;
    .end local v6    # "namespace":Ljava/lang/String;
    .end local v7    # "newJsonObject":Lorg/json/JSONObject;
    :catch_66
    move-exception v9

    new-instance v9, Lcom/facebook/FacebookException;

    const-string/jumbo v10, "Failed to create json object from share content"

    invoke-direct {v9, v10}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 482
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v1    # "fieldName":Ljava/lang/String;
    .restart local v2    # "fieldNameAndNamespace":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "names":Lorg/json/JSONArray;
    .restart local v6    # "namespace":Ljava/lang/String;
    .restart local v7    # "newJsonObject":Lorg/json/JSONObject;
    :cond_70
    :try_start_70
    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_48

    .line 484
    :cond_74
    if-eqz v6, :cond_83

    const-string/jumbo v9, "fb"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_83

    .line 485
    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_48

    .line 487
    :cond_83
    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_48

    .line 491
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v2    # "fieldNameAndNamespace":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "namespace":Ljava/lang/String;
    :cond_87
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 492
    const-string/jumbo v9, "data"

    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_93} :catch_66

    goto/16 :goto_3
.end method

.method public static toJSONObjectForCall(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
    .registers 11
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "content"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    .line 353
    .local v0, "action":Lcom/facebook/share/model/ShareOpenGraphAction;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    new-instance v7, Lcom/facebook/share/internal/ShareInternalUtility$7;

    invoke-direct {v7, p0, v2}, Lcom/facebook/share/internal/ShareInternalUtility$7;-><init>(Ljava/util/UUID;Ljava/util/ArrayList;)V

    invoke-static {v0, v7}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONObject(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;

    move-result-object v1

    .line 383
    .local v1, "actionJSON":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    .line 385
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPlaceId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_32

    .line 386
    const-string/jumbo v7, "place"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 390
    invoke-static {v7}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 391
    const-string/jumbo v7, "place"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPlaceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    :cond_32
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPeopleIds()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_6e

    .line 396
    const-string/jumbo v7, "tags"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 397
    .local v6, "peopleTags":Lorg/json/JSONArray;
    if-nez v6, :cond_5e

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 401
    .local v5, "peopleIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_46
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPeopleIds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 402
    .local v4, "peopleId":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 397
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "peopleId":Ljava/lang/String;
    .end local v5    # "peopleIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5e
    invoke-static {v6}, Lcom/facebook/internal/Utility;->jsonArrayToSet(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v5

    goto :goto_46

    .line 404
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "peopleIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_63
    const-string/jumbo v7, "tags"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "peopleIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "peopleTags":Lorg/json/JSONArray;
    :cond_6e
    return-object v1
.end method

.method public static toJSONObjectForWeb(Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
    .registers 3
    .param p0, "shareOpenGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    .line 415
    new-instance v1, Lcom/facebook/share/internal/ShareInternalUtility$8;

    invoke-direct {v1}, Lcom/facebook/share/internal/ShareInternalUtility$8;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONObject(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
