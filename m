Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE19F1B133
	for <lists+kexec@lfdr.de>; Mon, 13 May 2019 09:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qyjKQ/RbbeX/9BDlEzdK0tSvG149Ef1dGRDmQdaE5M=; b=pStnY9Yv+pWpkC
	NrBRsz2lLSGoTK5aPZL5SmuMMQ7i7zQTuWbKipvxG/RHIvlLYLmNz57VX5YeqlMldMCQM89K/rd9Q
	LOEDeONXbKdRBhprQN/CJC4EFrbNzUAetDTCxUk053FR142VkGPYlWhqW0vtAwjgZcU9kyd6sOJb7
	EL/YiDSEZjfrSR0s+CI0yRotWMEW+/6OD3ETKjs+rELCFBoUlSrxp7Wg/I/A6GHL6FI3uBqEuXSBL
	Seke3YkZwXpKeH+HZuFVaCm2yma4iv+5iWRvltmiBrmqKFdsLIkbvJMl4goEn2/PdjrjM3yu9mBmV
	U5cUv22Exsdz4gYhGIyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5SK-0003bI-Mf; Mon, 13 May 2019 07:33:04 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5SH-0003aZ-OV
 for kexec@lists.infradead.org; Mon, 13 May 2019 07:33:03 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2BFDF307D8E3;
 Mon, 13 May 2019 07:33:00 +0000 (UTC)
Received: from localhost (ovpn-12-31.pek2.redhat.com [10.72.12.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7CC251001DC0;
 Mon, 13 May 2019 07:32:56 +0000 (UTC)
Date: Mon, 13 May 2019 15:32:54 +0800
From: Baoquan He <bhe@redhat.com>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Message-ID: <20190513073254.GB16774@MiWiFi-R3L-srv>
References: <20190424092944.30481-1-bhe@redhat.com>
 <20190424092944.30481-2-bhe@redhat.com>
 <20190429002318.GA25400@MiWiFi-R3L-srv>
 <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513070725.GA20105@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 13 May 2019 07:33:00 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_003301_816863_681F9D74 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: fanc.fnst@cn.fujitsu.com, kasong@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, hpa@zytor.com,
 j-nomura@ce.jp.nec.com, tglx@linutronix.de, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/13/19 at 09:07am, Borislav Petkov wrote:
> Baoquan,
> 
> On Mon, May 13, 2019 at 09:43:05AM +0800, Baoquan He wrote:
> > Can this patchset be merged, or picked into tip?
> 
> what is this thing that happens everytime after a kernel is released and
> lasts for approximately 2 weeks?

This is a critical bug which breaks memory hotplug, since KASLR is
enabled by default in upstream, and in our distros too. You can see that
Junichi posted the patch after NEC must have tested the code and found
the new issue. And Chao from FJ also worked out the patches to fix the bug. 
And I have tracking  bugs at hand from other important customers, related
to this fix too. The back porting of Chao's patches into our distros are
blocked by these two. We gonna miss another due date we promised to customers.

Thanks
Baoquan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
