.class final Landroid/support/v7/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# instance fields
.field groupCategory:I

.field groupCheckable:I

.field groupEnabled:Z

.field groupId:I

.field groupOrder:I

.field groupVisible:Z

.field itemActionProvider:Landroid/support/v4/view/ActionProvider;

.field itemActionProviderClassName:Ljava/lang/String;

.field itemActionViewClassName:Ljava/lang/String;

.field itemActionViewLayout:I

.field itemAdded:Z

.field itemAlphabeticShortcut:C

.field itemCategoryOrder:I

.field itemCheckable:I

.field itemChecked:Z

.field itemEnabled:Z

.field itemIconResId:I

.field itemId:I

.field itemListenerMethodName:Ljava/lang/String;

.field itemNumericShortcut:C

.field itemShowAsAction:I

.field itemTitle:Ljava/lang/CharSequence;

.field itemTitleCondensed:Ljava/lang/CharSequence;

.field itemVisible:Z

.field menu:Landroid/view/Menu;

.field final synthetic this$0:Landroid/support/v7/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V
    .registers 3
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 329
    iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 332
    invoke-virtual {p0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->resetGroup()V

    .line 333
    return-void
.end method

.method static getShortcut(Ljava/lang/String;)C
    .registers 2
    .param p0, "shortcutString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 417
    if-nez p0, :cond_4

    .line 420
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public final addSubMenuItem()Landroid/view/SubMenu;
    .registers 7

    .prologue
    .line 483
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 484
    iget-object v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    iget v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 485
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 486
    return-object v0
.end method

.method final newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 497
    .local p2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    # getter for: Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/support/v7/view/SupportMenuInflater;->access$100(Landroid/support/v7/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 498
    invoke-virtual {v2, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 499
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 500
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v2

    .line 504
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_1a
    return-object v2

    .line 501
    :catch_1b
    move-exception v1

    .line 502
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SupportMenuInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot instantiate class: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public final resetGroup()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 336
    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    .line 337
    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 338
    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 339
    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 340
    iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 341
    iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 342
    return-void
.end method

.method final setItem(Landroid/view/MenuItem;)V
    .registers 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 425
    iget-boolean v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 426
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 427
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    iget v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    if-lez v5, :cond_19

    move v2, v3

    .line 428
    :cond_19
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 429
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iget v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 430
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-char v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 431
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    iget-char v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 432
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 434
    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v2, :cond_3d

    .line 435
    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 438
    :cond_3d
    iget-object v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v2, :cond_66

    .line 439
    iget-object v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    # getter for: Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/support/v7/view/SupportMenuInflater;->access$100(Landroid/support/v7/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 440
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    :cond_56
    new-instance v2, Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    .line 444
    invoke-static {v4}, Landroid/support/v7/view/SupportMenuInflater;->access$400(Landroid/support/v7/view/SupportMenuInflater;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 448
    :cond_66
    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_75

    .line 449
    instance-of v2, p1, Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v2, :cond_a5

    move-object v2, p1

    .line 450
    check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 456
    :cond_75
    :goto_75
    const/4 v1, 0x0

    .line 457
    .local v1, "actionViewSpecified":Z
    iget-object v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v2, :cond_90

    .line 458
    iget-object v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 459
    # getter for: Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    invoke-static {}, Landroid/support/v7/view/SupportMenuInflater;->access$500()[Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    # getter for: Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;
    invoke-static {v4}, Landroid/support/v7/view/SupportMenuInflater;->access$600(Landroid/support/v7/view/SupportMenuInflater;)[Ljava/lang/Object;

    move-result-object v4

    .line 458
    invoke-virtual {p0, v2, v3, v4}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 460
    .local v0, "actionView":Landroid/view/View;
    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 461
    const/4 v1, 0x1

    .line 463
    .end local v0    # "actionView":Landroid/view/View;
    :cond_90
    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v2, :cond_9b

    .line 464
    if-nez v1, :cond_e7

    .line 465
    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 472
    :cond_9b
    :goto_9b
    iget-object v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v2, :cond_a4

    .line 473
    iget-object v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-static {p1, v2}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    .line 475
    :cond_a4
    return-void

    .line 451
    .end local v1    # "actionViewSpecified":Z
    :cond_a5
    instance-of v2, p1, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    if-eqz v2, :cond_75

    move-object v2, p1

    .line 452
    check-cast v2, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    .line 1298
    :try_start_ac
    iget-object v3, v2, Landroid/support/v7/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_c9

    .line 1299
    iget-object v3, v2, Landroid/support/v7/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setExclusiveCheckable"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 1300
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    .line 1302
    :cond_c9
    iget-object v3, v2, Landroid/support/v7/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_db} :catch_dc

    goto :goto_75

    .line 1303
    :catch_dc
    move-exception v2

    .line 1304
    const-string/jumbo v3, "MenuItemWrapper"

    const-string/jumbo v4, "Error while calling setExclusiveCheckable"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    .line 468
    .restart local v1    # "actionViewSpecified":Z
    :cond_e7
    const-string/jumbo v2, "SupportMenuInflater"

    const-string/jumbo v3, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b
.end method
