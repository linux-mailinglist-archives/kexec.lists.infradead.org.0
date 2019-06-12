Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0A941A22
	for <lists+kexec@lfdr.de>; Wed, 12 Jun 2019 03:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DxuS5ZTN9nokL1xaSB+zHuoJnrhdJqErnYZZx5LGXbM=; b=baKEdcOeZJ1sKw
	8OLO6w638L/1bPSPZ6LGhtZMnM5TB7+sy3Et8bCL2mo5Jx9mXYua84vOg9BXK8ADUfGvBJP6MtHpl
	M+m7Hzlvn4dj3j+dM56EqtpMZVF8SgN8+qPmeSKNaux1eA8dD7YAVbL8DIru9NvkDFRVS2XgiSpYy
	PAY6sfZwmn5GmhY2r+Bnbi/MU4ypTu4Y8ti1cOmidL/EaAgallmjVYh+1wU44GuTREDeeoipouZJS
	Nd3xTM7pjG/pHOc7su07XvgAmSqQQGqiC8FC0ioIbM5Htt/1ePF4Erg/i4KbdyhX6OZVPbL2K3sT/
	RCFMAzzrKMaK4jUnExLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hasUX-00013t-FW; Wed, 12 Jun 2019 01:55:57 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hasUU-000137-9B
 for kexec@lists.infradead.org; Wed, 12 Jun 2019 01:55:55 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 311FA3082B64;
 Wed, 12 Jun 2019 01:55:53 +0000 (UTC)
Received: from localhost (ovpn-12-46.pek2.redhat.com [10.72.12.46])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EA5F1001B0A;
 Wed, 12 Jun 2019 01:55:51 +0000 (UTC)
Date: Wed, 12 Jun 2019 09:55:49 +0800
From: Baoquan He <bhe@redhat.com>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel
 e820 table
Message-ID: <20190612015549.GI26148@MiWiFi-R3L-srv>
References: <20190423013007.17838-1-lijiang@redhat.com>
 <12847a03-3226-0b29-97b5-04d404410147@redhat.com>
 <20190607174211.GN20269@zn.tnic>
 <20190608035451.GB26148@MiWiFi-R3L-srv>
 <20190608091030.GB32464@zn.tnic>
 <20190608100139.GC26148@MiWiFi-R3L-srv>
 <20190608100623.GA9138@zn.tnic>
 <20190608102659.GA9130@MiWiFi-R3L-srv>
 <20190610113747.GD5488@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610113747.GD5488@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 12 Jun 2019 01:55:53 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_185554_343152_7638451F 
X-CRM114-Status: GOOD (  13.58  )
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

On 06/10/19 at 01:37pm, Borislav Petkov wrote:
> On Sat, Jun 08, 2019 at 06:26:59PM +0800, Baoquan He wrote:
> > OK, I see. Then it should be the issue we have met and talked about with
> > Tom.
> > https://lkml.kernel.org/r/20190604134952.GC26891@MiWiFi-R3L-srv
> > 
> > You can apply Tom's patch as below. I tested it, it can make kexec
> > kernel succeed to boot, but failed for kdump kernel booting. The kdump
> > kernel can boot till the end of kernel initialization, then hang with a
> > call trace. I have pasted the log in the above thread. Haven't got the
> > reason.
> > http://lkml.kernel.org/r/508c2853-dc4f-70a6-6fa8-97c950dc31c6@amd.com
> 
> I can confirm the same observation.

With further investigation, the failure after applying Tom's patch is
caused by OOM. When increase crashkernel reservation to 512M, kdump
kernel can boot successfully. I noticed your crashkernel reservation is
256M, that will fail and stuck there very possibly.

So Tom's patch can fix the issue. We need further check why much more
crashkernel memory is needed on those AMD boxes with sme support..

Thanks
Baoquan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
