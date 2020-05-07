Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 662531C968D
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 18:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzop4cJLDSNrDun7bunxAaO4hkNdvIT54ZhpDclnTWc=; b=hnIbwDJis1vx+A
	93TyFtJt4m9xud2PXTQRTdZWxJ46l5/HtugwzldoGT9A93sKHt7EIn577cyPsBkLRskRr9jWJcc9p
	ZJt0defOqY5LJc8DELZyGlfnC6LHlBfi8sdPLGswyA33M4wTu8DnzJ5FKokPJRvWuGSmhEKNCfik8
	NkYlOcIX8ou1r5Ny7RQyuSkVYt/PLto3b5qSqmdJOPRsugTliQDblEo7f0GbzgkRD5cUn22UeWubA
	o3CENy9WX9dHXPBTbU5U15ySE4CH48L7CWiaXpV+bi5jE3wwKpYdSzJn1Qgv6oHBIRaSkUVm1KkTQ
	JVw+axPvupW/YS0ECYFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjQO-0000Ch-IK; Thu, 07 May 2020 16:31:04 +0000
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjQH-0008QS-Do; Thu, 07 May 2020 16:30:57 +0000
Subject: Re: [RFC 34/43] shmem: PKRAM: multithread preserving and restoring
 shmem pages
To: Anthony Yznaga <anthony.yznaga@oracle.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
 <1588812129-8596-35-git-send-email-anthony.yznaga@oracle.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <4e44858d-a416-696e-0d65-0b5ca8836b7d@infradead.org>
Date: Thu, 7 May 2020 09:30:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588812129-8596-35-git-send-email-anthony.yznaga@oracle.com>
Content-Language: en-US
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
Cc: x86@kernel.org, linux-doc@vger.kernel.org, gustavo@embeddedor.com,
 peterz@infradead.org, kexec@lists.infradead.org, paul.c.lai@intel.com,
 dave.hansen@linux.intel.com, mhocko@kernel.org, lei.l.li@intel.com,
 nivedita@alum.mit.edu, ziqian.lzq@antfin.com, hpa@zytor.com, ardb@kernel.org,
 ashok.raj@intel.com, bhe@redhat.com, corbet@lwn.net, masahiroy@kernel.org,
 rafael.j.wysocki@intel.com, hughd@google.com, willy@infradead.org,
 rppt@linux.ibm.com, mingo@redhat.com, vdavydov.dev@gmail.com,
 ying.huang@intel.com, Thomas.Lendacky@amd.com, kevin.tian@intel.com,
 jroedel@suse.de, keescook@chromium.org, dan.j.williams@intel.com, bp@alien8.de,
 zhiyuan.lv@intel.com, luto@kernel.org, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, dima@golovin.in, yang.shi@linux.alibaba.com,
 ndesaulniers@google.com, zhenzhong.duan@oracle.com, guro@fb.com,
 minchan@kernel.org, ebiederm@xmission.com, jason.zeng@intel.com,
 hannes@cmpxchg.org, linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 daniel.kiper@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 5/6/20 5:42 PM, Anthony Yznaga wrote:
> Improve performance by multithreading the work to preserve and restore
> shmem pages.
> 
> Add 'pkram_max_threads=' kernel option to specify the maximum number
> of threads to use to preserve or restore the pages of a shmem file.
> The default is 16.

Hi,
Please document kernel boot options in Documentation/admin-guide/kernel-parameters.txt.

> When preserving pages each thread saves chunks of a file to a pkram_obj
> until no more no more chunks are available.
> 
> When restoring pages each thread loads pages using a copy of a
> pkram_stream initialized by pkram_prepare_load_obj(). Under the hood
> each thread ends up fetching and operating on pkram_link pages.
> 
> Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
> ---
>  include/linux/pkram.h |   2 +
>  mm/shmem_pkram.c      | 101 +++++++++++++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 101 insertions(+), 2 deletions(-)

thanks.
-- 
~Randy


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
