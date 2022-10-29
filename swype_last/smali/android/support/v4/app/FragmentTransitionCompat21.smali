.class final Landroid/support/v4/app/FragmentTransitionCompat21;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;,
        Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
    }
.end annotation


# direct methods
.method public static addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 8
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v4, p0

    check-cast v4, Landroid/transition/Transition;

    .line 462
    .local v4, "transition":Landroid/transition/Transition;
    instance-of v5, v4, Landroid/transition/TransitionSet;

    if-eqz v5, :cond_1b

    move-object v3, v4

    .line 463
    check-cast v3, Landroid/transition/TransitionSet;

    .line 464
    .local v3, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    .line 465
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_3e

    .line 466
    invoke-virtual {v3, v0}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v5

    .line 467
    invoke-static {v5, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 469
    .end local v0    # "i":I
    .end local v1    # "numTransitions":I
    .end local v3    # "set":Landroid/transition/TransitionSet;
    :cond_1b
    invoke-static {v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 470
    invoke-virtual {v4}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v5

    .line 471
    invoke-static {v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 473
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 474
    .local v2, "numViews":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_30
    if-ge v0, v2, :cond_3e

    .line 475
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 479
    .end local v0    # "i":I
    .end local v2    # "numViews":I
    :cond_3e
    return-void
.end method

.method static captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_16

    .line 346
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_28

    move-object v3, p1

    .line 347
    check-cast v3, Landroid/view/ViewGroup;

    .line 348
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 349
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_16
    :goto_16
    return-void

    .line 351
    .restart local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_17
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 352
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-ge v2, v1, :cond_16

    .line 353
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 354
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 358
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_28
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method public static cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0, "transition"    # Ljava/lang/Object;

    .prologue
    .line 37
    if-eqz p0, :cond_8

    .line 38
    check-cast p0, Landroid/transition/Transition;

    .end local p0    # "transition":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p0

    .line 40
    :cond_8
    return-object p0
.end method

.method private static containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_e

    .line 311
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_b

    .line 312
    const/4 v1, 0x1

    .line 315
    :goto_a
    return v1

    .line 310
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 315
    :cond_e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static excludeSharedElementViews(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Z)V
    .registers 8
    .param p0, "enterTransitionObj"    # Ljava/lang/Object;
    .param p1, "exitTransitionObj"    # Ljava/lang/Object;
    .param p2, "sharedElementTransitionObj"    # Ljava/lang/Object;
    .param p4, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    .local v0, "enterTransition":Landroid/transition/Transition;
    move-object v1, p1

    .line 119
    check-cast v1, Landroid/transition/Transition;

    .local v1, "exitTransition":Landroid/transition/Transition;
    move-object v2, p2

    .line 120
    check-cast v2, Landroid/transition/Transition;

    .line 121
    .local v2, "sharedElementTransition":Landroid/transition/Transition;
    invoke-static {v0, v2, p3, p4}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 122
    invoke-static {v1, v2, p3, p4}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 123
    return-void
.end method

.method public static excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V
    .registers 3
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 61
    check-cast p0, Landroid/transition/Transition;

    .line 62
    .end local p0    # "transitionObject":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 63
    return-void
.end method

.method static excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    .registers 7
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "fromTransition"    # Landroid/transition/Transition;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_19

    .line 98
    if-nez p1, :cond_14

    const/4 v1, 0x0

    .line 99
    .local v1, "viewCount":I
    :goto_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v1, :cond_19

    .line 100
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, p3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 98
    .end local v0    # "i":I
    .end local v1    # "viewCount":I
    :cond_14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_5

    .line 103
    :cond_19
    return-void
.end method

.method public static findNamedViews(Ljava/util/Map;Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_27

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "transitionName":Ljava/lang/String;
    if-eqz v3, :cond_f

    .line 367
    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_f
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_27

    move-object v4, p1

    .line 370
    check-cast v4, Landroid/view/ViewGroup;

    .line 371
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 372
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_27

    .line 373
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 378
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "transitionName":Ljava/lang/String;
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_27
    return-void
.end method

.method static getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 336
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 337
    .local v0, "epicenter":Landroid/graphics/Rect;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 338
    .local v1, "loc":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 340
    aget v2, v1, v4

    aget v3, v1, v6

    aget v4, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 341
    return-object v0
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .registers 2
    .param p0, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 482
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 483
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 484
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static isNullOrEmpty(Ljava/util/List;)Z
    .registers 2
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 488
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v4, p0

    check-cast v4, Landroid/transition/Transition;

    .line 433
    .local v4, "transition":Landroid/transition/Transition;
    instance-of v5, v4, Landroid/transition/TransitionSet;

    if-eqz v5, :cond_1b

    move-object v2, v4

    .line 434
    check-cast v2, Landroid/transition/TransitionSet;

    .line 435
    .local v2, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    .line 436
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_4b

    .line 437
    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v5

    .line 438
    invoke-static {v5, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 440
    .end local v0    # "i":I
    .end local v1    # "numTransitions":I
    .end local v2    # "set":Landroid/transition/TransitionSet;
    :cond_1b
    invoke-static {v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 441
    invoke-virtual {v4}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v3

    .line 442
    .local v3, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v3, :cond_4b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_4b

    .line 443
    invoke-interface {v3, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 445
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .restart local v0    # "i":I
    :goto_3d
    if-ltz v0, :cond_4b

    .line 446
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 445
    add-int/lit8 v0, v0, -0x1

    goto :goto_3d

    .line 450
    .end local v0    # "i":I
    .end local v3    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_4b
    return-void
.end method

.method public static setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .registers 5
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    move-object v1, p0

    check-cast v1, Landroid/transition/Transition;

    .line 72
    .local v1, "transition":Landroid/transition/Transition;
    invoke-static {p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 74
    .local v0, "epicenter":Landroid/graphics/Rect;
    new-instance v2, Landroid/support/v4/app/FragmentTransitionCompat21$1;

    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentTransitionCompat21$1;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 80
    return-void
.end method

.method public static setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V
    .registers 16
    .param p0, "transitionObj"    # Ljava/lang/Object;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p2, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    .local p3, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v2, p0

    check-cast v2, Landroid/transition/TransitionSet;

    .line 266
    .local v2, "transition":Landroid/transition/TransitionSet;
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 267
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 269
    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v4

    .line 270
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 271
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 272
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v0, :cond_5f

    .line 273
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1285
    .local v3, "view":Landroid/view/View;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 1286
    invoke-static {v4, v3, v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 1289
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v7

    .line 1290
    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v6, v5, :cond_5c

    .line 1291
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1292
    instance-of v8, v5, Landroid/view/ViewGroup;

    if-eqz v8, :cond_58

    .line 1293
    check-cast v5, Landroid/view/ViewGroup;

    .line 1294
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 1295
    const/4 v8, 0x0

    :goto_46
    if-ge v8, v9, :cond_58

    .line 1296
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1297
    invoke-static {v4, v10, v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v11

    if-nez v11, :cond_55

    .line 1298
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1295
    :cond_55
    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    .line 1290
    :cond_58
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2f

    .line 272
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 276
    .end local v3    # "view":Landroid/view/View;
    :cond_5f
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-static {v2, p3}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 278
    return-void
.end method
