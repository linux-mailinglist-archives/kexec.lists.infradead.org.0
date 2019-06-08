Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3C039C51
	for <lists+kexec@lfdr.de>; Sat,  8 Jun 2019 12:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCiTabIg/sj+Xv1Z9PYH6SK/FNwNQYRsd2Asg0ylZw8=; b=blK+ADSqhx5FgS
	qyLFaN9EVN/NnAGDu3zKsw5EQQH6ku/aea3UheOaBf2eByOTeI2ai+Qn32/r1HQcyQr7sWu45lbm9
	DTz/9RzhLDZpzcZbGlvsaOp/lBAWYLFKHIM9i/4nvZbvppjUTFCJbM8qSdhT94K5wEVlW4ctC0Fc5
	/sE/S3JKXVLrXmXY67yLGYwKkdnsZlodz1Zy/kn6nBknrt+V9oGmAOnK9vrUWrQTv/T+ZzuYXAuYr
	w0w8yEX4bP3wf8Ide4k62vseqpEeZEx3KlyGDejzQ2e6rJptIjCLtsptYlbA8mbZt4mfsDth1y3Yz
	yqa7RTOcHj9WUb98tkkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZYAc-0000Kg-Fq; Sat, 08 Jun 2019 10:01:54 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZYAY-0000Ju-0p
 for kexec@lists.infradead.org; Sat, 08 Jun 2019 10:01:52 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2BD625944C;
 Sat,  8 Jun 2019 10:01:46 +0000 (UTC)
Received: from localhost (ovpn-12-31.pek2.redhat.com [10.72.12.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2484560BE5;
 Sat,  8 Jun 2019 10:01:41 +0000 (UTC)
Date: Sat, 8 Jun 2019 18:01:39 +0800
From: Baoquan He <bhe@redhat.com>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel
 e820 table
Message-ID: <20190608100139.GC26148@MiWiFi-R3L-srv>
References: <20190423013007.17838-1-lijiang@redhat.com>
 <12847a03-3226-0b29-97b5-04d404410147@redhat.com>
 <20190607174211.GN20269@zn.tnic>
 <20190608035451.GB26148@MiWiFi-R3L-srv>
 <20190608091030.GB32464@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608091030.GB32464@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Sat, 08 Jun 2019 10:01:47 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_030150_083870_63411C9E 
X-CRM114-Status: GOOD (  14.34  )
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
Cc: Thomas.Lendacky@amd.com, x86@kernel.org, lijiang <lijiang@redhat.com>,
 peterz@infradead.org, dave.hansen@linux.intel.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, luto@kernel.org, hpa@zytor.com,
 tglx@linutronix.de, dyoung@redhat.com, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 06/08/19 at 11:10am, Borislav Petkov wrote:
> On Sat, Jun 08, 2019 at 11:54:51AM +0800, Baoquan He wrote:
> > Is it a UEFI box?
> 
> Yes.

OK, it doesn't matter with uefi since CONFIG_RANDOMIZE_BASE is not set. 


> 
> > If it's uefi machine, it should relate to below issue. Because kexec
> > always fails to randomly choose a new position for kernel.
> 
> The kernel succeeds in selecting a position for the kernel - the kexec
> kernel doesn't load when a panic happens. Rather, the box panics and
> nothing more.

OK, it may be different with the case we met, if panic happened when
load a kdump kernel.

We can load with 'kexec -l' or 'kexec -p', but can't boot after triggering
crash or execute 'kexec -e' to do kexec jumping.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
