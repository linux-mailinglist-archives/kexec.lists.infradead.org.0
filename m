Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBC71C723D
	for <lists+kexec@lfdr.de>; Wed,  6 May 2020 15:55:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44+Sw5qyPn16tRH1UMAObHRArprcrk+HPEbj0zl791g=; b=KUTmNAvYNrznq6
	KA4NkkiO1sZJPeS0Uf51baGxo7JkoTx3zP3vbij74ArVWqNaU0f/EfFdaNOOYE0BGTAnwL5A6AE8a
	2YtLAFaFExanc0vC6TQs9xQ8s2PPbBhv5yiYUOHC1Mp7HuS8upVvjryIidT9RciIc4JEtOVRBn6vE
	6cVFdr375lHQo08hM1HI3k2tsGTK7EefRjJGMVrGmH0o/k45UAanYjMFZOx0DrpO1DXH9P41xugkg
	HKbKnIbg5XOuDa0o7VOFN0KjqSxZxl0M8lXaje7Tpdzm30Ta8M9KiuVq2gZqU9FpYdratUCa1UGlu
	jmhhqyQF5PPfFumM92zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWKWY-0003jm-BJ; Wed, 06 May 2020 13:55:46 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWKWU-0003j5-Mp
 for kexec@lists.infradead.org; Wed, 06 May 2020 13:55:44 +0000
Received: by mail-wm1-x341.google.com with SMTP id u16so2760592wmc.5
 for <kexec@lists.infradead.org>; Wed, 06 May 2020 06:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+3oAtPFs43ESjLsbZr3Dpn642+6yy2HyqbhMQ/uWkgQ=;
 b=QBtT3US2wB0+P6qkUKEHcf+qSYLvrcyiOywAusoUhWPzr+yVeCq3cKgKK1janaInDI
 dfja6C/g2al0FlC939i/E6rMEXPK6b+QAxogY2/5mxCX8F8zNn0l+X7vS9+K+4Ul93Sx
 K9NBGbnft+iPVBlXY5Scy5cJ6o3XdgR2f2OYVh+Yj9vGvLm0CqyshvS9n7SSAsj71eLs
 wILnnLs1o3F5G1sqJwlCOjJTjcU2fcuP38XwFTRBf0inWlXKgCq/uICcR3YtO+vFNDtm
 O+Iq4NvrvxUoMyQufUEU6bYrHeMt46/YA8wSAVLZSBtZFdTe26OjpYFEmGnfWJdSlSQ9
 uNVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+3oAtPFs43ESjLsbZr3Dpn642+6yy2HyqbhMQ/uWkgQ=;
 b=Fewe0x2EylKqxeAiUzlyh5rTx5Iq5fw1PQ3xib7bhrItV0MhOG7haMc4avhpLuTumb
 JXwAlj0aF7sI8CA2EkB7JCtLiEtAyTn7+M1YnPrNsf8pW5zDdYs3gZ6jsgkBrwz+Vg4g
 0yEMnj1m9BOJK1d1Zd8XFJl73VT+dRADBpBbp0sLsHyN33BhNm9iVmrcQ+dol46l+YbD
 RSr7OFDhCH0hZ5qgiI8MLcJ4kSV/J2tWk46cGBjIwbnC9Afgb1Y9UOcxmMHCy3rF7yx7
 U/vHzYw0N3iPhtrqXmzz2DSPP0CsBZxNAmGadzwFwxdz+Uq5oxajIurS2LznUSm05Q6j
 e7YQ==
X-Gm-Message-State: AGi0PuZcURdMPi+ibV9jsHBWQdyFk93fb0Zn2E2Re9kwzQ05Wgxlqjpa
 XU/Y3ACOmDYLs0hWF1iIGhJsecafneRya9FFy7Q=
X-Google-Smtp-Source: APiQypJOGE3rBsb/5sZNtnJekxBb8v8ckBwOqmMu2T2KcXkbgMCt9aqXpQAg4pdJ9tFju7ov96os4f3GqWLY0f4F8LQ=
X-Received: by 2002:a1c:7f91:: with SMTP id a139mr4338753wmd.164.1588773340849; 
 Wed, 06 May 2020 06:55:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200504190227.18269-1-david@redhat.com>
 <20200504190227.18269-4-david@redhat.com>
In-Reply-To: <20200504190227.18269-4-david@redhat.com>
From: Pankaj Gupta <pankaj.gupta.linux@gmail.com>
Date: Wed, 6 May 2020 15:55:29 +0200
Message-ID: <CAM9Jb+h0VKOU5dSZ7ChzW_Z=tG+UGq-cY7ePPRQpFS1-GHZOgg@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] device-dax: Add memory via
 add_memory_driver_managed()
To: David Hildenbrand <david@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_065542_773891_31F1247B 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pankaj.gupta.linux[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michal Hocko <mhocko@suse.com>, Dave Jiang <dave.jiang@intel.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>, Baoquan He <bhe@redhat.com>,
 linux-nvdimm@lists.01.org, Vishal Verma <vishal.l.verma@intel.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, kexec@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Wei Yang <richard.weiyang@gmail.com>,
 Linux MM <linux-mm@kvack.org>, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> Currently, when adding memory, we create entries in /sys/firmware/memmap/
> as "System RAM". This will lead to kexec-tools to add that memory to the
> fixed-up initial memmap for a kexec kernel (loaded via kexec_load()). The
> memory will be considered initial System RAM by the kexec'd kernel and
> can no longer be reconfigured. This is not what happens during a real
> reboot.
>
> Let's add our memory via add_memory_driver_managed() now, so we won't
> create entries in /sys/firmware/memmap/ and indicate the memory as
> "System RAM (kmem)" in /proc/iomem. This allows everybody (especially
> kexec-tools) to identify that this memory is special and has to be treated
> differently than ordinary (hotplugged) System RAM.
>
> Before configuring the namespace:
>         [root@localhost ~]# cat /proc/iomem
>         ...
>         140000000-33fffffff : Persistent Memory
>           140000000-33fffffff : namespace0.0
>         3280000000-32ffffffff : PCI Bus 0000:00
>
> After configuring the namespace:
>         [root@localhost ~]# cat /proc/iomem
>         ...
>         140000000-33fffffff : Persistent Memory
>           140000000-1481fffff : namespace0.0
>           148200000-33fffffff : dax0.0
>         3280000000-32ffffffff : PCI Bus 0000:00
>
> After loading kmem before this change:
>         [root@localhost ~]# cat /proc/iomem
>         ...
>         140000000-33fffffff : Persistent Memory
>           140000000-1481fffff : namespace0.0
>           150000000-33fffffff : dax0.0
>             150000000-33fffffff : System RAM
>         3280000000-32ffffffff : PCI Bus 0000:00
>
> After loading kmem after this change:
>         [root@localhost ~]# cat /proc/iomem
>         ...
>         140000000-33fffffff : Persistent Memory
>           140000000-1481fffff : namespace0.0
>           150000000-33fffffff : dax0.0
>             150000000-33fffffff : System RAM (kmem)
>         3280000000-32ffffffff : PCI Bus 0000:00
>
> After a proper reboot:
>         [root@localhost ~]# cat /proc/iomem
>         ...
>         140000000-33fffffff : Persistent Memory
>           140000000-1481fffff : namespace0.0
>           148200000-33fffffff : dax0.0
>         3280000000-32ffffffff : PCI Bus 0000:00
>
> Within the kexec kernel before this change:
>         [root@localhost ~]# cat /proc/iomem
>         ...
>         140000000-33fffffff : Persistent Memory
>           140000000-1481fffff : namespace0.0
>           150000000-33fffffff : System RAM
>         3280000000-32ffffffff : PCI Bus 0000:00
>
> Within the kexec kernel after this change:
>         [root@localhost ~]# cat /proc/iomem
>         ...
>         140000000-33fffffff : Persistent Memory
>           140000000-1481fffff : namespace0.0
>           148200000-33fffffff : dax0.0
>         3280000000-32ffffffff : PCI Bus 0000:00
>
> /sys/firmware/memmap/ before this change:
>         0000000000000000-000000000009fc00 (System RAM)
>         000000000009fc00-00000000000a0000 (Reserved)
>         00000000000f0000-0000000000100000 (Reserved)
>         0000000000100000-00000000bffdf000 (System RAM)
>         00000000bffdf000-00000000c0000000 (Reserved)
>         00000000feffc000-00000000ff000000 (Reserved)
>         00000000fffc0000-0000000100000000 (Reserved)
>         0000000100000000-0000000140000000 (System RAM)
>         0000000150000000-0000000340000000 (System RAM)
>
> /sys/firmware/memmap/ after a proper reboot:
>         0000000000000000-000000000009fc00 (System RAM)
>         000000000009fc00-00000000000a0000 (Reserved)
>         00000000000f0000-0000000000100000 (Reserved)
>         0000000000100000-00000000bffdf000 (System RAM)
>         00000000bffdf000-00000000c0000000 (Reserved)
>         00000000feffc000-00000000ff000000 (Reserved)
>         00000000fffc0000-0000000100000000 (Reserved)
>         0000000100000000-0000000140000000 (System RAM)
>
> /sys/firmware/memmap/ after this change:
>         0000000000000000-000000000009fc00 (System RAM)
>         000000000009fc00-00000000000a0000 (Reserved)
>         00000000000f0000-0000000000100000 (Reserved)
>         0000000000100000-00000000bffdf000 (System RAM)
>         00000000bffdf000-00000000c0000000 (Reserved)
>         00000000feffc000-00000000ff000000 (Reserved)
>         00000000fffc0000-0000000100000000 (Reserved)
>         0000000100000000-0000000140000000 (System RAM)
>
> kexec-tools already seem to basically ignore any System RAM that's not
> on top level when searching for areas to place kexec images - but also
> for determining crash areas to dump via kdump. Changing the resource name
> won't have an impact.
>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Pankaj Gupta <pankaj.gupta.linux@gmail.com>
> Cc: Wei Yang <richard.weiyang@gmail.com>
> Cc: Baoquan He <bhe@redhat.com>
> Cc: Dave Hansen <dave.hansen@linux.intel.com>
> Cc: Eric Biederman <ebiederm@xmission.com>
> Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>  drivers/dax/kmem.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/dax/kmem.c b/drivers/dax/kmem.c
> index 3d0a7e702c94..5a645a24e359 100644
> --- a/drivers/dax/kmem.c
> +++ b/drivers/dax/kmem.c
> @@ -65,7 +65,13 @@ int dev_dax_kmem_probe(struct device *dev)
>         new_res->flags = IORESOURCE_SYSTEM_RAM;
>         new_res->name = dev_name(dev);
>
> -       rc = add_memory(numa_node, new_res->start, resource_size(new_res));
> +       /*
> +        * Ensure that future kexec'd kernels will not treat this as RAM
> +        * automatically.
> +        */
> +       rc = add_memory_driver_managed(numa_node, new_res->start,
> +                                      resource_size(new_res),
> +                                      "System RAM (kmem)");
>         if (rc) {
>                 release_resource(new_res);
>                 kfree(new_res);
> --

Acked-by: Pankaj Gupta <pankaj.gupta.linux@gmail.com>

> 2.25.3
>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
