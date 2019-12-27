Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D7C12B0B1
	for <lists+kexec@lfdr.de>; Fri, 27 Dec 2019 03:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRnYXlCZ/rmbjQdauN0p0ucD2Ic+Tlp/sUtTLlqplUc=; b=pDebDLhSes1WuC
	rdyGITVkl1LnCZDGIB3W+lpJ7g9anQI3ukpOrmw+B/pFUV94NtlECF+uRssUfnEd8DVFPdaf3/naG
	bSC6NlwMmbWhuJshFu2ChkGo2TygSxuab5WUe2p/zUP3uqLpS2SNAykqWM2sl3b6ZJPLCvPqbGHc5
	Y4YlAdXPWgQCFaKjUNn9pkk++TgrmUdrBQy0XZkRosDH3joXmzE3oIjCMhZa1BfVvBrrvN3yjq32c
	PUaJpH0Hn7XMK8eF8fXbNjDDjOMKSYUaBnQDTo4XJpN1Pspgltehn02veWTM5hLpt2M+PMIqLHW9m
	9v7VU/w4+AfVWMxAestw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikfZz-0004gk-Sg; Fri, 27 Dec 2019 02:42:19 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikfZt-0004fh-Bp
 for kexec@lists.infradead.org; Fri, 27 Dec 2019 02:42:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577414530;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xCaJpVVbrNTx225OC6iD9vkkqz51AJ51Qi1CAzobeDQ=;
 b=W5UJca2fvXw01Eo0Dmu1b1B4MpdS6jwi4EzWwbC9bIWPH+kfhbr9cbwypeU2JGQljU5+/2
 MA38aWgKN524DT2kwiLoN59lP/6a5yz8xX3RF1Revd0Xl/PhX3DUfyd8kcLcRNqQac5lgE
 5jkJwI2gxehL/s1pf3UaIVjGYBxTeHU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-UHILjgpLPwyL298YdwwCfg-1; Thu, 26 Dec 2019 21:42:06 -0500
X-MC-Unique: UHILjgpLPwyL298YdwwCfg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 655C18014D7;
 Fri, 27 Dec 2019 02:42:05 +0000 (UTC)
Received: from localhost (ovpn-12-133.pek2.redhat.com [10.72.12.133])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 19C1D81768;
 Fri, 27 Dec 2019 02:42:01 +0000 (UTC)
Date: Fri, 27 Dec 2019 10:41:58 +0800
From: "'bhe@redhat.com'" <bhe@redhat.com>
To: "d.hatayama@fujitsu.com" <d.hatayama@fujitsu.com>
Subject: Re: [RFD] kdump, kaslr: how to fix the failure of reservation of
 crashkernel low memory due to physical kaslr
Message-ID: <20191227024158.GD3355@MiWiFi-R3L-srv>
References: <OSBPR01MB4006AF8B4D355200E385850E95280@OSBPR01MB4006.jpnprd01.prod.outlook.com>
 <20191225065914.GC3355@MiWiFi-R3L-srv>
 <TYAPR01MB4014912D759953FC24D6EE1B952B0@TYAPR01MB4014.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TYAPR01MB4014912D759953FC24D6EE1B952B0@TYAPR01MB4014.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_184213_475910_CB549F7F 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "'kexec@lists.infradead.org'" <kexec@lists.infradead.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 "'ebiederm@xmission.com'" <ebiederm@xmission.com>,
 "'dyoung@redhat.com'" <dyoung@redhat.com>,
 "'mingo@kernel.org'" <mingo@kernel.org>,
 "'vgoyal@redhat.com'" <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 12/26/19 at 09:22am, d.hatayama@fujitsu.com wrote:
> 
> > -----Original Message-----
> > 
> > Hi HATAYAMA,
> > 
> > On 12/25/19 at 04:26am, d.hatayama@fujitsu.com wrote:
> > > Currently, reservation of crashkernel low memory sometimes fails due
> > > to a sparse memory caused by physical kaslr with the following
> > > message:
> > >
> > >     Cannot reserve 256MB crashkernel low memory, please try smaller size.
> > 
> > I don't understand, may not get your point. KASLR will randomize the
> > position of kernel image. However, kernel image usually takes up 50M
> > memory. Under low 4G memory, how come it can't reserve 256M crashkernel
> > low memory. Do you have the boot log of the failed case?
> 
> Thanks for your comments and sorry for the insufficient explanation.
> 
> Low 4GB memory in our system is considerably limited. The size of the largest
> contiguous free physical pages at the timing when kernel attempts at
> reserving low memory for crash kernel is less than 512MB. Hence, if physical
> kaslr inserts kernel image into the center of the chunk, every remaining
> chunks have less than 256M size. Then, the failure occurs.

OK, this is truly extreme case, thanks for sharing.

Then I have several questions about it:

1) Can we use crashkernel=high, crashkernel=low, to fix this issue?
I believe in this system you told, it must be a high-end server, should
have hardware iommu depolyed. It doesn't need 256M low memory actually,
maybe 128M, even 64M is enough?

Asking this is because the 256M is default setting, default value only
covers general cases.

2) What if the system becomes more extreme, like the largest contiguous
free physical pages is less than 256M, even less than 128M?

Even though kernel image is limited to above 4G, whose fault is it? and
how can we fix it in this case?

3) If we really add limitation, maybe add kaslr_high to limit KASLR to
only put kernel image above 4G? 

 
> > 
...
 
> > Someone ever told that some systems may not have low 4G memory since
> > they own hardware iommu. In real life, I never see such kind of system,
> > and most of them can give 256M crashkernel memory a satisfactory result.
> > Unless you reserve more than 1G under low 4G, it could fail because of
> > kinds of complicated memory reservations there.
> 
> I'm surprised to hear such system without low 4GB memory and I wonder
> how such system works well without restriction of memory access range
> in early runtime mode on x86 such as real mode.

I think they meant almost no low memory, and it's a prototype machine to
experiment. Can't remember the detail.

Thanks
Baoquan


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
