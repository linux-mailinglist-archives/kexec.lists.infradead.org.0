Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAD61CE567
	for <lists+kexec@lfdr.de>; Mon, 11 May 2020 22:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kq6RvT8dgcEWIJFP5zCP5cowHuj5tVlDxVx1q8SZl3Q=; b=Jw7Fuf2f+4ym8P
	4MCl+JtVGJWpogcY4p1n6xLE/5cFYv4UNSyh59E2YAHJ4qAnp56dXLEZwX9zsO+r+woC0B7FXiVwD
	iCsjiUPEs+0Zj+L6qrlDYs7DKwLCnGVoERpxALE8SMrmpg0LRuoar/A9ylbAAXIXEbnBhV1JtsbIN
	YscOOd8Dx+JzWJWB77ZE37mXfagyrXOFiCMyZE9R0UvDHkFBo5hx5MnnI0YX98DY2KHP6/Nla37Kg
	6Vs8afBJ9CD/9w9t6fA1hzodYWXuRv2caiI5xbXsTWnSUyVumqWygWMrNgGbbiBDTU47+BxqN/p2x
	7QfpivH4FEUtsHBqgsBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYEzf-0008QJ-PM; Mon, 11 May 2020 20:25:43 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYEzc-0008PX-Em
 for kexec@lists.infradead.org; Mon, 11 May 2020 20:25:41 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id CF1D612848D5A;
 Mon, 11 May 2020 13:25:32 -0700 (PDT)
Date: Mon, 11 May 2020 13:25:31 -0700 (PDT)
Message-Id: <20200511.132531.1067573616053698778.davem@davemloft.net>
To: bhsharma@redhat.com
Subject: Re: [PATCH v2 0/2] net: Optimize the qed* allocations inside kdump
 kernel
From: David Miller <davem@davemloft.net>
In-Reply-To: <1589191902-958-1-git-send-email-bhsharma@redhat.com>
References: <1589191902-958-1-git-send-email-bhsharma@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 11 May 2020 13:25:33 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_132540_497096_FC77E6F0 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: aelior@marvell.com, irusskikh@marvell.com, manishc@marvell.com,
 netdev@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, GR-everest-linux-l2@marvell.com,
 bhupesh.linux@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 11 May 2020 15:41:40 +0530

 ...
> Since kdump kernel(s) run under severe memory constraint with the
> basic idea being to save the crashdump vmcore reliably when the primary
> kernel panics/hangs, large memory allocations done by a network driver
> can cause the crashkernel to panic with OOM.
> 
> The qed* drivers take up approximately 214MB memory when run in the
> kdump kernel with the default configuration settings presently used in
> the driver. With an usual crashkernel size of 512M, this allocation
> is equal to almost half of the total crashkernel size allocated.
> 
> See some logs obtained via memstrack tool (see [1]) below:
>  dracut-pre-pivot[676]: ======== Report format module_summary: ========
>  dracut-pre-pivot[676]: Module qed using 149.6MB (2394 pages), peak allocation 149.6MB (2394 pages)
>  dracut-pre-pivot[676]: Module qede using 65.3MB (1045 pages), peak allocation 65.3MB (1045 pages)
> 
> This patchset tries to reduce the overall memory allocation profile of
> the qed* driver when they run in the kdump kernel. With these
> optimization we can see a saving of approx 85M in the kdump kernel:
>  dracut-pre-pivot[671]: ======== Report format module_summary: ========
>  dracut-pre-pivot[671]: Module qed using 124.6MB (1993 pages), peak allocation 124.7MB (1995 pages)
>  <..snip..>
>  dracut-pre-pivot[671]: Module qede using 4.6MB (73 pages), peak allocation 4.6MB (74 pages)
 ...

Series applied to net-next, thanks.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
