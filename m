Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DD73C8E3
	for <lists+kexec@lfdr.de>; Tue, 11 Jun 2019 12:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/bnwZenbXfcg0SnGPGwyfoFwfMW4W8Ze068M124Weo=; b=hSQ1d9MrusfMz0
	XkPpftxR+VgYr/LNrBC6cPQVBoSwHPLdMzVWvnI6EEujZZQ/JmBvtI6x+00dzLJNspwsx6fY+Vhmm
	f6OX9TIdi+H6Xg49FRvq6SOpBdONi3bw44p0+3zKihm1Nw8uH3unn/zbSJgsiJwZW1k+1gzwcHr91
	yPJoyROdSIzwjVhjZdI+NDBPemgCE3VcgW9P3IUKKjLkWbS9/XsSFajyAst/x432+6so8CDmFeob3
	RNs4UkCa0nJgEPvEAd0/ArXXaVDP9IUy3B3YzQExmDx7SPYE00GjYuR0EmPkSGluoGdbzkbgMRbVM
	f1BZmgPkF6LKl4JmIklA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadz3-0005Ev-Ju; Tue, 11 Jun 2019 10:26:29 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadxD-0002NU-6Q
 for kexec@lists.infradead.org; Tue, 11 Jun 2019 10:24:37 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E8A5331628E2;
 Tue, 11 Jun 2019 10:24:31 +0000 (UTC)
Received: from localhost (ovpn-12-24.pek2.redhat.com [10.72.12.24])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4FA1660BF1;
 Tue, 11 Jun 2019 10:24:31 +0000 (UTC)
Date: Tue, 11 Jun 2019 18:24:28 +0800
From: Baoquan He <bhe@redhat.com>
To: lijiang <lijiang@redhat.com>
Subject: Re: The current SME implementation fails kexec/kdump kernel booting.
Message-ID: <20190611102428.GF26148@MiWiFi-R3L-srv>
References: <20190604134952.GC26891@MiWiFi-R3L-srv>
 <508c2853-dc4f-70a6-6fa8-97c950dc31c6@amd.com>
 <20190605005600.GF26891@MiWiFi-R3L-srv>
 <0d9fba9d-7bbe-a7c7-dfe4-696da0dfecc4@amd.com>
 <2fe0e56c-9286-b71d-3d6d-c2a6fbcfba89@redhat.com>
 <33b9237f-5e8c-fe49-4f55-220ce9a492fb@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33b9237f-5e8c-fe49-4f55-220ce9a492fb@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 11 Jun 2019 10:24:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_032435_313124_20FBA654 
X-CRM114-Status: GOOD (  16.58  )
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
Cc: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Tom,

On 06/11/19 at 05:52pm, lijiang wrote:
> After applied Tom's patch, i changed the reserved memory(for crash kernel) to the
> above 256M(>256M), such as crashkernel=320M or 384M,512M..., the kdump kernel can
> work and successfully dump the vmcore.
> 
> But the kdump kernel always happened the panic or could not boot successfully in
> the 256M(<= 256M) case, and on HP machine, i noticed that it printed OOM, the kdump
> kernel was too smaller memory. But i never see the OOM on speedway machine(probably
> related to the earlyprintk, it doesn't work and it loses many logs).
> 
> After removing the option 'CONFIG_DEBUG_INFO' from .config, i tested again, the kdump
> kernel did not happen the panic in the 256M(crashkernel=256M), the kdump kernel can
> work and succeed to dump the vmcore on HP machine or speedway machine.
> 
> It seems that the small memory caused the previous failure in kdump kernel. I would
> suggest to post this patch to upstream. What's your opinion? Tom, Baoquan and other
> people. Or do you have any comment?

As Lianbo said at above, the previous failure in kdump kernel is caused
by OOM. Just the log on speedway is incomplete, I am not sure what
happened. Now after investigation, your patch works to fix the issue.
Could you post it for riviewing?

Thanks
Baoquan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
