Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C572718CB06
	for <lists+kexec@lfdr.de>; Fri, 20 Mar 2020 11:00:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvCI5vQ3QZqRjifeseXewlz+vTbeAA965gvs5NZx0N8=; b=glBq0ainOg69nR
	1GtMhCzzhXPaLrR9oTkL+hkU5Gx44LeqF6pMgYOgvaDJMgoZ7QOMj44U8iidRt8I3bzaxAYhm8a4w
	RNjYVbZahL/KW1awYSXnmnaUr3tm/C69IvNdZL0evZfaq8NoROrN7xwHU+a8KS0g4q9HuKL90grOq
	5yAZyQhcJjTYMLlpQx8favDW5Jsp9e/OBnNd5z9XguuJi3DqhGiC1u4cv0mbI7AYTpd3eWGQeubt6
	PNw38e+CvVIvIzg2rzHY64QrS2hnDlqfFGZ+8J4InhR2lSqHET9/5lU9sydxQh9ff+HPhXMEWRgEX
	lcEP+Fdo3guMpynaPNJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFESS-0005BX-FT; Fri, 20 Mar 2020 10:00:52 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFESP-0005Ae-Gf
 for kexec@lists.infradead.org; Fri, 20 Mar 2020 10:00:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584698446;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OhGdRDimoydz1fT3CsvYSAlzFLb6nzVVmLyiiWdxzZ4=;
 b=RZgh2uOr8ySD2/Xl6yv3DY0f/Qk8qVQ06L/qYtTGD0GCPJ+zGvxbWYbDI80xDCkGqq/5XH
 mN5o+2EMItjibvdxFTg7gMqPykshyzqrTydGoElyQEHfWKsTsGrXORBakLOlb+tFrFkpy+
 XM1A49RFkkdMLmUPN7+OQG0Qlk/OzhU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-aAQ3WwCAO7q_Kx6jn35Ixw-1; Fri, 20 Mar 2020 06:00:42 -0400
X-MC-Unique: aAQ3WwCAO7q_Kx6jn35Ixw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 94AE9100DFC0;
 Fri, 20 Mar 2020 10:00:40 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-155.pek2.redhat.com
 [10.72.12.155])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 765621001920;
 Fri, 20 Mar 2020 10:00:30 +0000 (UTC)
Date: Fri, 20 Mar 2020 18:00:26 +0800
From: Dave Young <dyoung@redhat.com>
To: Jaewon Kim <jaewon31.kim@samsung.com>
Subject: Re: [RFC PATCH 0/3] meminfo: introduce extra meminfo
Message-ID: <20200320100026.GA36529@dhcp-128-65.nay.redhat.com>
References: <CGME20200311034454epcas1p2ef0c0081971dd82282583559398e58b2@epcas1p2.samsung.com>
 <20200311034441.23243-1-jaewon31.kim@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311034441.23243-1-jaewon31.kim@samsung.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_030049_646175_2D626FD3 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sergey.senozhatsky.work@gmail.com, bhe@redhat.com, linux-mm@kvack.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 sumit.semwal@linaro.org, minchan@kernel.org, jaewon31.kim@gmail.com,
 akpm@linux-foundation.org, labbott@redhat.com, adobriyan@gmail.com,
 ngupta@vflare.org, kasong@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 03/11/20 at 12:44pm, Jaewon Kim wrote:
> /proc/meminfo or show_free_areas does not show full system wide memory
> usage status. There seems to be huge hidden memory especially on
> embedded Android system. Because it usually have some HW IP which do not
> have internal memory and use common DRAM memory.
> 
> In Android system, most of those hidden memory seems to be vmalloc pages
> , ion system heap memory, graphics memory, and memory for DRAM based
> compressed swap storage. They may be shown in other node but it seems to
> useful if /proc/meminfo shows all those extra memory information. And
> show_mem also need to print the info in oom situation.
> 
> Fortunately vmalloc pages is alread shown by commit 97105f0ab7b8
> ("mm: vmalloc: show number of vmalloc pages in /proc/meminfo"). Swap
> memory using zsmalloc can be seen through vmstat by commit 91537fee0013
> ("mm: add NR_ZSMALLOC to vmstat") but not on /proc/meminfo.
> 
> Memory usage of specific driver can be various so that showing the usage
> through upstream meminfo.c is not easy. To print the extra memory usage
> of a driver, introduce following APIs. Each driver needs to count as
> atomic_long_t.
> 
> int register_extra_meminfo(atomic_long_t *val, int shift,
> 			   const char *name);
> int unregister_extra_meminfo(atomic_long_t *val);
> 
> Currently register ION system heap allocator and zsmalloc pages.
> Additionally tested on local graphics driver.
> 
> i.e) cat /proc/meminfo | tail -3
> IonSystemHeap:    242620 kB
> ZsPages:          203860 kB
> GraphicDriver:    196576 kB
> 
> i.e.) show_mem on oom
> <6>[  420.856428]  Mem-Info:
> <6>[  420.856433]  IonSystemHeap:32813kB ZsPages:44114kB GraphicDriver::13091kB
> <6>[  420.856450]  active_anon:957205 inactive_anon:159383 isolated_anon:0

Kdump is also a use case for having a better memory use info, it runs
with limited memory, and we see more oom cases from device drivers
instead of userspace processes.

I think this might be helpful if drivers can implement and register the
hook.  But it would be ideal if we can have some tracing code to trace
the memory alloc/free and get the memory use info automatically.

Anyway the proposal is better than none, thumb up!

Let me cc Kairui who is working on kdump oom issues.

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
