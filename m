Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6DC193029
	for <lists+kexec@lfdr.de>; Wed, 25 Mar 2020 19:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6+FrSEUxx7LPOtqtH3w9XDIzZPAhssXejkI8JLjXko=; b=q8LCxKUqxo0b0W
	gUPUnL50CePmEeFfCQ0jQzJOTaBq/mgBc34GIIZ1gXPxqxdsaqBgP84qHXECxLQ7FFeudUN5l0MPE
	H04IYSNo1kxbGbJoTiKaJgKV7zvYlYUtPkvseMJ+LiGfEdifgw0exQIZRcf6EX4eLyfmRkrmh+Trn
	H0w3xNNLtYSJ6/gcJErpGnnFTK9t0YFC/Rzq9US05WWWFpRpOKFmSyvmylgrgGpgq39ngf9u+wwP3
	X7VWQ7mgvwOgdmhTr4suCcw6yVKVK8WSXoDOdeAQc6bJp0ZyAf4uJxslTTsjddo9UpABLZxP+xzKz
	A4+1VPm7ek/ML/Zb/Ohg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHAWa-0008Et-Jh; Wed, 25 Mar 2020 18:13:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHAWT-0008Dr-KT
 for kexec@lists.infradead.org; Wed, 25 Mar 2020 18:13:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id h9so4390093wrc.8
 for <kexec@lists.infradead.org>; Wed, 25 Mar 2020 11:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3QYyaGrQpYyWaZ6oYwhc56xJCsI+0fcYVeC22HIA+uc=;
 b=B1+oS4JxxUkN8An2JMtn4rbpXDh5oak3Nhzbu26gmN2zse3nygc/IXtxty0D4nLuej
 0QeZ4DLTCdNKczDxfBsuNLSD9qClbxxsLJ5aHJFscskDE1Y1ZmJdmpW/+2qSVRRZaicv
 S/Ih42cnymRQVZ6yU4OgBPZEtJhLI4bcqazrqrAKM/iM0WRDxdv+Ee2dxeCnq7AFFl7L
 037C5Y9HAQrMHdOxljt1hxOfO7i/ibEOeqGYj8vVWxWet88MhSoJPyg+XEQc8buXlpGN
 i8Ikon8CS3BDacMg4/IMbR5WHwfq72PeM9yhKAKXqCMvylgC/5JkvIBZQR1Y7SxraOMn
 rdeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3QYyaGrQpYyWaZ6oYwhc56xJCsI+0fcYVeC22HIA+uc=;
 b=JWYKrsp5m0lSJG0mH2i4CXnVFYrC7shtF7cWG33WBVqU7rqZ4EKeKEujN1NV8bP5NR
 UGiI8qPDYebTgVrByjQkNGn9nh5hfmZKykYrCyfOyoJu8TIzk+0SKd2oOiXX9b9hWg1D
 Wb423hKshKKqqQMTOtX8D3Sm8zZUGovwVlNsAEWCiCsa8QTCRcFpDqF7bZfMykEy6Q1N
 0NycLc48LojVCGRqbKB6t/X/crOjfc4SAdLh4Y2v5aoqaiEJKusyQF4KqVjCPetNzGut
 X7MVGaCKi2sgxL4WJFGNfVI+mWtBNb4oZckxHfq+AxDUoPZPYMSPVXC57V9rbaLXHB8g
 xoRg==
X-Gm-Message-State: ANhLgQ2KWWDXdJ8bZNhV4abz3sOoygY49xvl8zDE2dTtEh6ihIk6L7ue
 qA6akNOIHSTbSjtAr4g7FQ==
X-Google-Smtp-Source: ADFU+vsK87vWZ86CZbSOPvStWKiJYDwyDfB/k0nWBadKFPEKNE8HclBtYUpqZ807F5qMdQXCmPxW5Q==
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr5033937wrp.403.1585159978286; 
 Wed, 25 Mar 2020 11:12:58 -0700 (PDT)
Received: from avx2 ([46.53.251.45])
 by smtp.gmail.com with ESMTPSA id 71sm20166150wrc.53.2020.03.25.11.12.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 11:12:57 -0700 (PDT)
Date: Wed, 25 Mar 2020 21:12:55 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Jaewon Kim <jaewon31.kim@samsung.com>
Subject: Re: [RFC PATCH v2 0/3] meminfo_extra: introduce meminfo extra
Message-ID: <20200325181255.GB18706@avx2>
References: <CGME20200323080507epcas1p44cdb9ecb70a7a7395b3acddeda3cfd89@epcas1p4.samsung.com>
 <20200323080503.6224-1-jaewon31.kim@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323080503.6224-1-jaewon31.kim@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_111301_674184_AD99FF63 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [adobriyan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 gregkh@linuxfoundation.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, minchan@kernel.org, bhe@redhat.com,
 ngupta@vflare.org, linux-api@vger.kernel.org, jaewon31.kim@gmail.com,
 akpm@linux-foundation.org, labbott@redhat.com, sumit.semwal@linaro.org,
 vbabka@suse.cz, kasong@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 05:05:00PM +0900, Jaewon Kim wrote:
> /proc/meminfo or show_free_areas does not show full system wide memory
> usage status because memory stats do not track all memory allocations.
> There seems to be huge hidden memory especially on embedded system. It
> is because some HW IPs in the system use common DRAM memory instead of
> internal memory. Device drivers directly request huge pages from the
> page allocator with alloc_pages.
> 
> In Android system, most of those hidden memory seems to be vmalloc
> pages, ion system heap memory, graphics memory, and memory for DRAM
> based compressed swap storage. They may be shown in other node but it
> seems to be useful if /proc/meminfo_extra shows all those extra memory
> information. And show_mem also need to print the info in oom situation.
> 
> Fortunately vmalloc pages is already shown by commit 97105f0ab7b8
> ("mm: vmalloc: show number of vmalloc pages in /proc/meminfo"). Swap
> memory using zsmalloc can be seen through vmstat by commit 91537fee0013
> ("mm: add NR_ZSMALLOC to vmstat") but not on /proc/meminfo.
> 
> Memory usage of specific driver can be various so that showing the usage
> through upstream meminfo.c is not easy. To print the extra memory usage
> of a driver, introduce following APIs. Each driver needs to count as
> atomic_long_t.
> 
> int register_meminfo_extra(atomic_long_t *val, int shift,
> 			   const char *name);
> int unregister_meminfo_extra(atomic_long_t *val);
> 
> Currently register ION system heap allocator and zsmalloc pages.
> Additionally tested on local graphics driver.
> 
> i.e) cat /proc/meminfo_extra | tail -3
> IonSystemHeap:    242620 kB
> ZsPages:          203860 kB
> GraphicDriver:    196576 kB

In that case definitely delete ':', spaces and KB.
They only slowdown generation and parsing in userspace.
Values should be printed /proc/vmstat does it, maybe with tab instead of
space.

	foo	1234
	bar	0
	zot	111

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
