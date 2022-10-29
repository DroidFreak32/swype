.class public final Lcom/bumptech/glide/request/GenericRequest;
.super Ljava/lang/Object;
.source "GenericRequest.java"

# interfaces
.implements Lcom/bumptech/glide/request/Request;
.implements Lcom/bumptech/glide/request/ResourceCallback;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/GenericRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/Request;",
        "Lcom/bumptech/glide/request/ResourceCallback;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;"
    }
.end annotation


# static fields
.field private static final REQUEST_POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/request/GenericRequest",
            "<****>;>;"
        }
    .end annotation
.end field


# instance fields
.field private animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private engine:Lcom/bumptech/glide/load/engine/Engine;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private errorResourceId:I

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackResourceId:I

.field private isMemoryCacheable:Z

.field private loadProvider:Lcom/bumptech/glide/provider/LoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

.field private loadedFromMemoryCache:Z

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderResourceId:I

.field private priority:Lcom/bumptech/glide/Priority;

.field private requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

.field private requestListener:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TA;TR;>;"
        }
    .end annotation
.end field

.field private resource:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/bumptech/glide/load/Key;

.field private sizeMultiplier:F

.field private startTime:J

.field private status:Lcom/bumptech/glide/request/GenericRequest$Status;

.field private final tag:Ljava/lang/String;

.field private target:Lcom/bumptech/glide/request/target/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;"
        }
    .end annotation
.end field

.field private transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 147
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->tag:Ljava/lang/String;

    .line 149
    return-void
.end method

.method private canNotifyStatusChanged()Z
    .registers 2

    .prologue
    .line 462
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 246
    if-nez p1, :cond_20

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "message":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " must not be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    .end local v0    # "message":Ljava/lang/StringBuilder;
    :cond_20
    return-void
.end method

.method private getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 415
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_16

    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    if-lez v0, :cond_16

    .line 416
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 418
    :cond_16
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private isFirstReadyResource()Z
    .registers 2

    .prologue
    .line 466
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private logV(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 553
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    const-string/jumbo v0, "GenericRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method public static obtain(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;
    .registers 28
    .param p2, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "priority"    # Lcom/bumptech/glide/Priority;
    .param p6, "sizeMultiplier"    # F
    .param p7, "placeholderDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p8, "placeholderResourceId"    # I
    .param p9, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p10, "errorResourceId"    # I
    .param p11, "fallbackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p12, "fallbackResourceId"    # I
    .param p14, "requestCoordinator"    # Lcom/bumptech/glide/request/RequestCoordinator;
    .param p15, "engine"    # Lcom/bumptech/glide/load/engine/Engine;
    .param p18, "isMemoryCacheable"    # Z
    .param p20, "overrideWidth"    # I
    .param p21, "overrideHeight"    # I
    .param p22, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/Key;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TA;TR;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;Z",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/request/GenericRequest",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
    .local p1, "model":Ljava/lang/Object;, "TA;"
    .local p5, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    .local p13, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<-TA;TR;>;"
    .local p16, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    .local p17, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p19, "animationFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"
    sget-object v2, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/GenericRequest;

    .line 118
    .local v1, "request":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    if-nez v1, :cond_f

    .line 119
    new-instance v1, Lcom/bumptech/glide/request/GenericRequest;

    .end local v1    # "request":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-direct {v1}, Lcom/bumptech/glide/request/GenericRequest;-><init>()V

    .line 1193
    .restart local v1    # "request":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    :cond_f
    iput-object p0, v1, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    .line 1194
    iput-object p1, v1, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    .line 1195
    iput-object p2, v1, Lcom/bumptech/glide/request/GenericRequest;->signature:Lcom/bumptech/glide/load/Key;

    .line 1196
    move-object/from16 v0, p11

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1197
    move/from16 v0, p12

    iput v0, v1, Lcom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    .line 1198
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    .line 1199
    iput-object p4, v1, Lcom/bumptech/glide/request/GenericRequest;->priority:Lcom/bumptech/glide/Priority;

    .line 1200
    iput-object p5, v1, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 1201
    iput p6, v1, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    .line 1202
    iput-object p7, v1, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 1203
    iput p8, v1, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    .line 1204
    iput-object p9, v1, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1205
    iput p10, v1, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    .line 1206
    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    .line 1207
    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 1208
    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 1209
    move-object/from16 v0, p16

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 1210
    move-object/from16 v0, p17

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    .line 1211
    move/from16 v0, p18

    iput-boolean v0, v1, Lcom/bumptech/glide/request/GenericRequest;->isMemoryCacheable:Z

    .line 1212
    move-object/from16 v0, p19

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 1213
    move/from16 v0, p20

    iput v0, v1, Lcom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    .line 1214
    move/from16 v0, p21

    iput v0, v1, Lcom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    .line 1215
    move-object/from16 v0, p22

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 1216
    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->PENDING:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 1220
    if-eqz p1, :cond_c3

    .line 1221
    const-string/jumbo v2, "ModelLoader"

    invoke-interface {p0}, Lcom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v3

    const-string/jumbo v4, "try .using(ModelLoader)"

    invoke-static {v2, v3, v4}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1222
    const-string/jumbo v2, "Transcoder"

    invoke-interface {p0}, Lcom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v3

    const-string/jumbo v4, "try .as*(Class).transcode(ResourceTranscoder)"

    invoke-static {v2, v3, v4}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1223
    const-string/jumbo v2, "Transformation"

    const-string/jumbo v3, "try .transform(UnitTransformation.get())"

    move-object/from16 v0, p16

    invoke-static {v2, v0, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2028
    move-object/from16 v0, p22

    iget-boolean v2, v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource:Z

    .line 1224
    if-eqz v2, :cond_c4

    .line 1225
    const-string/jumbo v2, "SourceEncoder"

    invoke-interface {p0}, Lcom/bumptech/glide/provider/LoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v3

    const-string/jumbo v4, "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)"

    invoke-static {v2, v3, v4}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3028
    :goto_97
    move-object/from16 v0, p22

    iget-boolean v2, v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource:Z

    .line 1231
    if-nez v2, :cond_a3

    .line 3035
    move-object/from16 v0, p22

    iget-boolean v2, v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult:Z

    .line 1231
    if-eqz v2, :cond_b0

    .line 1235
    :cond_a3
    const-string/jumbo v2, "CacheDecoder"

    invoke-interface {p0}, Lcom/bumptech/glide/provider/LoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v3

    const-string/jumbo v4, "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)"

    invoke-static {v2, v3, v4}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4035
    :cond_b0
    move-object/from16 v0, p22

    iget-boolean v2, v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult:Z

    .line 1238
    if-eqz v2, :cond_c3

    .line 1239
    const-string/jumbo v2, "Encoder"

    invoke-interface {p0}, Lcom/bumptech/glide/provider/LoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v3

    const-string/jumbo v4, "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)"

    invoke-static {v2, v3, v4}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    :cond_c3
    return-object v1

    .line 1228
    :cond_c4
    const-string/jumbo v2, "SourceDecoder"

    invoke-interface {p0}, Lcom/bumptech/glide/provider/LoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v3

    const-string/jumbo v4, "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)"

    invoke-static {v2, v3, v4}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_97
.end method

.method private releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 4
    .param p1, "resource"    # Lcom/bumptech/glide/load/engine/Resource;

    .prologue
    .line 341
    .line 7247
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 7248
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/EngineResource;

    if-eqz v0, :cond_10

    .line 7249
    check-cast p1, Lcom/bumptech/glide/load/engine/EngineResource;

    .end local p1    # "resource":Lcom/bumptech/glide/load/engine/Resource;
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/EngineResource;->release()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 343
    return-void

    .line 7251
    .restart local p1    # "resource":Lcom/bumptech/glide/load/engine/Resource;
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final begin()V
    .registers 5

    .prologue
    .line 262
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    .line 263
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 281
    :cond_e
    :goto_e
    return-void

    .line 268
    :cond_f
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 269
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 270
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/GenericRequest;->onSizeReady(II)V

    .line 275
    :goto_24
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->isComplete()Z

    move-result v0

    if-nez v0, :cond_42

    .line 4382
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_6c

    const/4 v0, 0x1

    .line 275
    :goto_31
    if-nez v0, :cond_42

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 276
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/Target;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :cond_42
    const-string/jumbo v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "finished run method in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    goto :goto_e

    .line 272
    :cond_66
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/target/Target;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    goto :goto_24

    .line 4382
    :cond_6c
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public final clear()V
    .registers 5

    .prologue
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    const/4 v3, 0x1

    .line 313
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 314
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_b

    .line 327
    :goto_a
    return-void

    .line 5294
    :cond_b
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 5295
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    if-eqz v0, :cond_37

    .line 5296
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 6057
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->engineJob:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    .line 6088
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 6089
    iget-boolean v2, v1, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-nez v2, :cond_24

    iget-boolean v2, v1, Lcom/bumptech/glide/load/engine/EngineJob;->hasException:Z

    if-eqz v2, :cond_54

    .line 6105
    :cond_24
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/Set;

    if-nez v2, :cond_2f

    .line 6106
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/Set;

    .line 6108
    :cond_2f
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5297
    :cond_34
    :goto_34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 319
    :cond_37
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v0, :cond_40

    .line 320
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 322
    :cond_40
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 323
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/Target;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_4f
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    goto :goto_a

    .line 6092
    :cond_54
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6093
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 6117
    iget-boolean v0, v1, Lcom/bumptech/glide/load/engine/EngineJob;->hasException:Z

    if-nez v0, :cond_34

    iget-boolean v0, v1, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-nez v0, :cond_34

    iget-boolean v0, v1, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-nez v0, :cond_34

    .line 6120
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/EngineJob;->engineRunnable:Lcom/bumptech/glide/load/engine/EngineRunnable;

    .line 7045
    iput-boolean v3, v0, Lcom/bumptech/glide/load/engine/EngineRunnable;->isCancelled:Z

    .line 7046
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 7133
    iput-boolean v3, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    .line 7134
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    .line 6121
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/EngineJob;->future:Ljava/util/concurrent/Future;

    .line 6122
    if-eqz v0, :cond_81

    .line 6123
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 6125
    :cond_81
    iput-boolean v3, v1, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    .line 6126
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v2, v1, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V

    goto :goto_34
.end method

.method public final isCancelled()Z
    .registers 3

    .prologue
    .line 374
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final isComplete()Z
    .registers 3

    .prologue
    .line 358
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isResourceSet()Z
    .registers 2

    .prologue
    .line 366
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->isComplete()Z

    move-result v0

    return v0
.end method

.method public final isRunning()Z
    .registers 3

    .prologue
    .line 350
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final onException(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 541
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    const-string/jumbo v0, "GenericRequest"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 545
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 547
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->isFirstReadyResource()Z

    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestListener;->onException$6f56094()Z

    move-result v0

    if-nez v0, :cond_61

    .line 13393
    :cond_1a
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 13397
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    if-nez v0, :cond_62

    .line 14386
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3a

    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    if-lez v0, :cond_3a

    .line 14387
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 14389
    :cond_3a
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 13398
    :goto_3c
    if-nez v0, :cond_56

    .line 14408
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_54

    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    if-lez v0, :cond_54

    .line 14409
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 14411
    :cond_54
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 13401
    :cond_56
    if-nez v0, :cond_5c

    .line 13402
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 13404
    :cond_5c
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/request/target/Target;->onLoadFailed$71731cd5(Landroid/graphics/drawable/Drawable;)V

    .line 550
    :cond_61
    return-void

    .line 13397
    :cond_62
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method public final onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    if-nez p1, :cond_24

    .line 482
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Expected to receive a Resource<R> with an object of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " inside, but instead got null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 508
    :cond_23
    :goto_23
    return-void

    .line 487
    :cond_24
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    .line 488
    .local v0, "received":Ljava/lang/Object;
    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_93

    .line 489
    :cond_36
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 490
    new-instance v2, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Expected to receive an object of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " but instead got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "} inside Resource{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "}."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_8f

    const-string/jumbo v1, ""

    :goto_7c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    goto :goto_23

    :cond_8b
    const-string/jumbo v1, ""

    goto :goto_56

    :cond_8f
    const-string/jumbo v1, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_7c

    .line 11458
    :cond_93
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v1, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lcom/bumptech/glide/request/Request;)Z

    move-result v1

    if-eqz v1, :cond_ab

    :cond_9f
    const/4 v1, 0x1

    .line 500
    :goto_a0
    if-nez v1, :cond_ad

    .line 501
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 503
    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    goto/16 :goto_23

    .line 11458
    :cond_ab
    const/4 v1, 0x0

    goto :goto_a0

    .line 11518
    :cond_ad
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->isFirstReadyResource()Z

    move-result v1

    .line 11519
    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 11520
    iput-object p1, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 11522
    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    if-eqz v2, :cond_c3

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    invoke-interface {v2}, Lcom/bumptech/glide/request/RequestListener;->onResourceReady$25390db0()Z

    move-result v2

    if-nez v2, :cond_d0

    .line 11524
    :cond_c3
    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    iget-boolean v3, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    invoke-interface {v2, v3, v1}, Lcom/bumptech/glide/request/animation/GlideAnimationFactory;->build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v1

    .line 11525
    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v2, v0, v1}, Lcom/bumptech/glide/request/target/Target;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 12470
    :cond_d0
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v1, :cond_d9

    .line 12471
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v1, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/bumptech/glide/request/Request;)V

    .line 11530
    :cond_d9
    const-string/jumbo v1, "GenericRequest"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 11531
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Resource ready in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3eb0000000000000L    # 9.5367431640625E-7

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " fromCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    goto/16 :goto_23
.end method

.method public final onSizeReady(II)V
    .registers 29
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 426
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    const-string/jumbo v2, "GenericRequest"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Got onSizeReady in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 429
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v3, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v2, v3, :cond_30

    .line 455
    :cond_2f
    :goto_2f
    return-void

    .line 432
    :cond_30
    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 434
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    move/from16 v0, p1

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 435
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    move/from16 v0, p2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v2}, Lcom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v2

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v2, v3, v0, v1}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v16

    .line 440
    .local v16, "dataFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
    if-nez v16, :cond_8a

    .line 441
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to load model: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    goto :goto_2f

    .line 444
    :cond_8a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v2}, Lcom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v11

    .line 445
    .local v11, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    const-string/jumbo v2, "GenericRequest"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "finished setup for calling load in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 448
    :cond_b9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/request/GenericRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/request/GenericRequest;->signature:Lcom/bumptech/glide/load/Key;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/request/GenericRequest;->priority:Lcom/bumptech/glide/Priority;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/bumptech/glide/request/GenericRequest;->isMemoryCacheable:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/request/GenericRequest;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object/from16 v21, v0

    .line 8145
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 8146
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v24

    .line 8148
    invoke-interface/range {v16 .. v16}, Lcom/bumptech/glide/load/data/DataFetcher;->getId()Ljava/lang/String;

    move-result-object v3

    .line 8149
    invoke-interface/range {v17 .. v17}, Lcom/bumptech/glide/provider/DataLoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v7

    invoke-interface/range {v17 .. v17}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v8

    invoke-interface/range {v17 .. v17}, Lcom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v10

    invoke-interface/range {v17 .. v17}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v12

    .line 9016
    new-instance v2, Lcom/bumptech/glide/load/engine/EngineKey;

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v2 .. v12}, Lcom/bumptech/glide/load/engine/EngineKey;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)V

    .line 9218
    if-nez v13, :cond_15b

    .line 9219
    const/4 v3, 0x0

    .line 8154
    :cond_109
    :goto_109
    if-eqz v3, :cond_18b

    .line 8155
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 8156
    const-string/jumbo v3, "Engine"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 8157
    const-string/jumbo v3, "Loaded resource from cache"

    move-wide/from16 v0, v24

    invoke-static {v3, v0, v1, v2}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 8159
    :cond_122
    const/4 v2, 0x0

    .line 449
    :goto_123
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v2, :cond_254

    const/4 v2, 0x1

    :goto_12e
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 452
    const-string/jumbo v2, "GenericRequest"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "finished onSizeReady in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 9232
    :cond_15b
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v3, v2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v3

    .line 9235
    if-nez v3, :cond_17c

    .line 9236
    const/4 v3, 0x0

    .line 9223
    :goto_166
    if-eqz v3, :cond_109

    .line 9224
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 9225
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    new-instance v5, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;

    invoke-virtual/range {v23 .. v23}, Lcom/bumptech/glide/load/engine/Engine;->getReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v6

    invoke-direct {v5, v2, v3, v6}, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_109

    .line 9237
    :cond_17c
    instance-of v4, v3, Lcom/bumptech/glide/load/engine/EngineResource;

    if-eqz v4, :cond_183

    .line 9239
    check-cast v3, Lcom/bumptech/glide/load/engine/EngineResource;

    goto :goto_166

    .line 9241
    :cond_183
    new-instance v4, Lcom/bumptech/glide/load/engine/EngineResource;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;Z)V

    move-object v3, v4

    goto :goto_166

    .line 10199
    :cond_18b
    if-nez v13, :cond_1aa

    .line 10200
    const/4 v3, 0x0

    .line 8163
    :goto_18e
    if-eqz v3, :cond_1cb

    .line 8164
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 8165
    const-string/jumbo v3, "Engine"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1a7

    .line 8166
    const-string/jumbo v3, "Loaded resource from active resources"

    move-wide/from16 v0, v24

    invoke-static {v3, v0, v1, v2}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 8168
    :cond_1a7
    const/4 v2, 0x0

    goto/16 :goto_123

    .line 10203
    :cond_1aa
    const/4 v4, 0x0

    .line 10204
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 10205
    if-eqz v3, :cond_257

    .line 10206
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/engine/EngineResource;

    .line 10207
    if-eqz v3, :cond_1c3

    .line 10208
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    goto :goto_18e

    .line 10210
    :cond_1c3
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18e

    .line 8171
    :cond_1cb
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 8172
    if-eqz v3, :cond_1f7

    .line 8173
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/load/engine/EngineJob;->addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 8174
    const-string/jumbo v4, "Engine"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1ee

    .line 8175
    const-string/jumbo v4, "Added to existing load"

    move-wide/from16 v0, v24

    invoke-static {v4, v0, v1, v2}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 8177
    :cond_1ee
    new-instance v2, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V

    goto/16 :goto_123

    .line 8180
    :cond_1f7
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    .line 10380
    new-instance v3, Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v5, v4, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    iget-object v6, v4, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceService:Ljava/util/concurrent/ExecutorService;

    iget-object v8, v4, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    move-object v4, v2

    move v7, v13

    invoke-direct/range {v3 .. v8}, Lcom/bumptech/glide/load/engine/EngineJob;-><init>(Lcom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/EngineJobListener;)V

    .line 8181
    new-instance v12, Lcom/bumptech/glide/load/engine/DecodeJob;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    move-object/from16 v20, v0

    move-object v13, v2

    move/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v18, v9

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v22}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V

    .line 8183
    new-instance v4, Lcom/bumptech/glide/load/engine/EngineRunnable;

    move-object/from16 v0, v22

    invoke-direct {v4, v3, v12, v0}, Lcom/bumptech/glide/load/engine/EngineRunnable;-><init>(Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/Priority;)V

    .line 8184
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8185
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/load/engine/EngineJob;->addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 11067
    iput-object v4, v3, Lcom/bumptech/glide/load/engine/EngineJob;->engineRunnable:Lcom/bumptech/glide/load/engine/EngineRunnable;

    .line 11068
    iget-object v5, v3, Lcom/bumptech/glide/load/engine/EngineJob;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/EngineJob;->future:Ljava/util/concurrent/Future;

    .line 8188
    const-string/jumbo v4, "Engine"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_24b

    .line 8189
    const-string/jumbo v4, "Started new load"

    move-wide/from16 v0, v24

    invoke-static {v4, v0, v1, v2}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 8191
    :cond_24b
    new-instance v2, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V

    goto/16 :goto_123

    .line 451
    :cond_254
    const/4 v2, 0x0

    goto/16 :goto_12e

    :cond_257
    move-object v3, v4

    goto/16 :goto_18e
.end method

.method public final pause()V
    .registers 2

    .prologue
    .line 336
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->clear()V

    .line 337
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 338
    return-void
.end method

.method public final recycle()V
    .registers 3

    .prologue
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    .line 154
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    .line 155
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    .line 156
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 157
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 160
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    .line 161
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 162
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 163
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 165
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 166
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method
