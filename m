Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8ECF18F222
	for <lists+kexec@lfdr.de>; Mon, 23 Mar 2020 10:49:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Og4pnbGLISBQ6lnZNqaEFr599iBdXrCz9MJ84MsjF/4=; b=sFvF+1kdgxBw6L
	Xbnmnc1UMdczRElTzrnhWpbGRBnRqT6o/0Wq+IC/qIQqsX7Z+2+j/96ZFFP3aGZTx3OHdOKETkTgX
	E+iIRM56Wu0nuWBqHOMcTwxxUb5weAIUMmmd/tLm3nXFgIuP7OOJvSNVhjan50pQrMsW/TnuOdzbt
	ZL7vaSOJl1AiB3Hbi/4EYLInxrjNIxIGBP+dW0WDX4dJttXrjnUwXEIIdr/VflM0FRzW1qJC956xr
	JLpZXOlzvNdqMsGcOcAzOVCGzwIoHIfE3e4VUFvzhC7ktpfCYngVetENgl/Jy+tnIeBFEpbgL9wXH
	CgBn4yzbhQ9giPeT1z9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJiT-0001Ty-JL; Mon, 23 Mar 2020 09:49:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJiQ-0001TK-52
 for kexec@lists.infradead.org; Mon, 23 Mar 2020 09:49:51 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B5022072D;
 Mon, 23 Mar 2020 09:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584956988;
 bh=Dk9SiQHTvQDbS1aDBmct0UumdwanFiG0VwvW4geFoX0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LSULd/9gOiraf5VSWDJaltlND3dLyq3/XYW5kRo1UHq7nV7tV0kIgncKq3yFgmPbq
 QOrPv+GZWXZq5oFHq2ycSIzwD38EuTM9L/n9Y1Ge+z833ItBbLH/ifI8YStGlieQTE
 E/rDy5i7fGDZMudd5gobmLJdX7pLFD+pG1mmmKmw=
Date: Mon, 23 Mar 2020 10:49:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jaewon Kim <jaewon31.kim@samsung.com>
Subject: Re: [RFC PATCH v2 3/3] android: ion: include system heap size in
 meminfo extra
Message-ID: <20200323094946.GA425358@kroah.com>
References: <20200323080503.6224-1-jaewon31.kim@samsung.com>
 <CGME20200323080508epcas1p3c68190cd46635b9ff026a4ae70fc7a3b@epcas1p3.samsung.com>
 <20200323080503.6224-4-jaewon31.kim@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323080503.6224-4-jaewon31.kim@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_024950_211976_4B57AB02 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sergey.senozhatsky.work@gmail.com, leon@kernel.org, linux-mm@kvack.org,
 linux-api@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, adobriyan@gmail.com, minchan@kernel.org,
 bhe@redhat.com, ngupta@vflare.org, jaewon31.kim@gmail.com,
 akpm@linux-foundation.org, labbott@redhat.com, sumit.semwal@linaro.org,
 vbabka@suse.cz, kasong@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 05:05:03PM +0900, Jaewon Kim wrote:
> In Android system ion system heap size is huge like hundreds of MB. To
> know overal system memory usage, include ion system heap size in
> proc/meminfo_extra.
> 
> To include heap size, use register_meminfo_extra introduced in previous
> patch.
> 
> Prior to register we need to add stats to show the ion heap usage. Add
> total_allocated into ion heap and count it on allocation and freeing. In
> a ion heap using ION_HEAP_FLAG_DEFER_FREE, a buffer can be freed from
> user but still live on deferred free list. Keep stats until the buffer
> is finally freed so that we can cover situation of deferred free thread
> stuck problem.
> 
> i.e) cat /proc/meminfo_extra | grep IonSystemHeap
> IonSystemHeap:    242620 kB
> 
> i.e.) show_mem on oom
> <6>[  420.856428]  Mem-Info:
> <6>[  420.856433]  IonSystemHeap:32813kB
> 
> Signed-off-by: Jaewon Kim <jaewon31.kim@samsung.com>
> ---
>  drivers/staging/android/ion/ion.c             | 2 ++
>  drivers/staging/android/ion/ion.h             | 1 +
>  drivers/staging/android/ion/ion_system_heap.c | 2 ++
>  3 files changed, 5 insertions(+)

Does this really give the proper granularity that ion users have?  I
thought they wanted to know what each heap was doing.

Also, this code should be deleted really soon now, so I would not make
any core changes to the kernel based on it at all.

thanks,

greg k-h

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
