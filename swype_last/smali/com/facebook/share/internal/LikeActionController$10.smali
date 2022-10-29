.class Lcom/facebook/share/internal/LikeActionController$10;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->refreshStatusViaService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;)V
    .registers 2

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 1143
    if-eqz p1, :cond_b

    const-string/jumbo v0, "com.facebook.platform.extra.OBJECT_IS_LIKED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1183
    :cond_b
    :goto_b
    return-void

    .line 1147
    :cond_c
    const-string/jumbo v0, "com.facebook.platform.extra.OBJECT_IS_LIKED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1149
    .local v1, "objectIsLiked":Z
    const-string/jumbo v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string/jumbo v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1154
    .local v2, "likeCountWithLike":Ljava/lang/String;
    :goto_23
    const-string/jumbo v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    const-string/jumbo v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1160
    .local v3, "likeCountWithoutLike":Ljava/lang/String;
    :goto_33
    const-string/jumbo v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string/jumbo v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1165
    .local v4, "socialSentenceWithLike":Ljava/lang/String;
    :goto_43
    const-string/jumbo v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string/jumbo v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1171
    .local v5, "socialSentenceWithoutLike":Ljava/lang/String;
    :goto_53
    const-string/jumbo v0, "com.facebook.platform.extra.UNLIKE_TOKEN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    const-string/jumbo v0, "com.facebook.platform.extra.UNLIKE_TOKEN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1176
    .local v6, "unlikeToken":Ljava/lang/String;
    :goto_63
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # invokes: Lcom/facebook/share/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/facebook/share/internal/LikeActionController;->access$1300(Lcom/facebook/share/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1149
    .end local v2    # "likeCountWithLike":Ljava/lang/String;
    .end local v3    # "likeCountWithoutLike":Ljava/lang/String;
    .end local v4    # "socialSentenceWithLike":Ljava/lang/String;
    .end local v5    # "socialSentenceWithoutLike":Ljava/lang/String;
    .end local v6    # "unlikeToken":Ljava/lang/String;
    :cond_69
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$700(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    .line 1154
    .restart local v2    # "likeCountWithLike":Ljava/lang/String;
    :cond_70
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$800(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    goto :goto_33

    .line 1160
    .restart local v3    # "likeCountWithoutLike":Ljava/lang/String;
    :cond_77
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$900(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    goto :goto_43

    .line 1165
    .restart local v4    # "socialSentenceWithLike":Ljava/lang/String;
    :cond_7e
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1000(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v5

    goto :goto_53

    .line 1171
    .restart local v5    # "socialSentenceWithoutLike":Ljava/lang/String;
    :cond_85
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1100(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v6

    goto :goto_63
.end method
