Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4E4F5480
	for <lists+kexec@lfdr.de>; Fri,  8 Nov 2019 20:12:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=788FvDrHyn57JM0lHo3hDd50mua7irPVCG82aTVnmoM=; b=NWjfJBqgNU0yGI
	mp7wSavcT6IekwGSfB5qdOgNEYTu87qOzBTDc0Xh8EM6sC1jHhO05a8g5sYuhsQ6BV18sg7nVPTr1
	SLCMSH3Gy/X4TxVw7KooA2mH51Cl8qOMayrtqkq1kuewMOT6BP3reTAaSyug9r2krlqkeoHT+wqjb
	hUzYB0s9nDhLm6wa4yGWHawqP2P6rfC6YFSe0rXRmdcQhGZ91+o9KCPpxFrxzR+NQWZr4bIAlmAN2
	84tZqXS60hEvrLzR3YnnvSvwyiqiDh7aUFT8im3upgIJH9k2ybjt19XsM81XjNp6/d4lOfOIa/r/m
	ZX23r0rCHogfSUQAuRrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT9gH-0005Ox-Na; Fri, 08 Nov 2019 19:12:25 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT9gD-0005Nx-Vr
 for kexec@lists.infradead.org; Fri, 08 Nov 2019 19:12:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573240340;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=owJJTSOw7Wgm5CNIdvjQ+BH0uWy7fpQbACTM7OLCrn4=;
 b=VQkXkt90IahqDQ6GpoqXoDia0EzMah9JEAgYdB2z+1xrgUYkzyretLbNthRrbrPNA+nKSm
 imR7v6eb4bg9SLdBiZ/HgKVt9B+DJh9HOAUYOixfgLSreM7jCVUKEHiiqpXgrfoZbGcNmR
 Q1WT1dnKJSBUkA4QoTC1lVX6BJ8kjjY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-387-8gXJ_lCxNfaQ_65WvTMEPA-1; Fri, 08 Nov 2019 14:12:16 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA246800C72;
 Fri,  8 Nov 2019 19:12:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C34AF5C883;
 Fri,  8 Nov 2019 19:12:15 +0000 (UTC)
Received: from zmail24.collab.prod.int.phx2.redhat.com
 (zmail24.collab.prod.int.phx2.redhat.com [10.5.83.30])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id BA1131803C32;
 Fri,  8 Nov 2019 19:12:15 +0000 (UTC)
Date: Fri, 8 Nov 2019 14:12:15 -0500 (EST)
From: Dave Anderson <anderson@redhat.com>
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Message-ID: <2055125554.11167146.1573240335556.JavaMail.zimbra@redhat.com>
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC03594B01@BPXM09GP.gisp.nec.co.jp>
References: <4AE2DC15AC0B8543882A74EA0D43DBEC03594B01@BPXM09GP.gisp.nec.co.jp>
Subject: Re: makedumpfile: ELF format issues
MIME-Version: 1.0
X-Originating-IP: [10.10.122.103, 10.4.195.7]
Thread-Topic: makedumpfile: ELF format issues
Thread-Index: AdWWR4uz1IJKJQzMRsGi+hVXKECmU05sXOWn
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: 8gXJ_lCxNfaQ_65WvTMEPA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_111222_124219_3C4393FD 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



----- Original Message -----
> Hi Dave,
> 
> > -----Original Message-----
> > > > It is possible that the issue occurs on general systems if they have
> > > > large memory, so I'm going to proceed with those patches.
> > >
> > > Hi Kazu,
> > >
> > > Do you want me to go ahead with the crash utility patch?  It looks
> > > safe enough to apply, and I did test it to make sure there were no
> > > ill-effects with sample ELF dumpfiles.
> > 
> > Oh, thank you for your attention and testing.
> > 
> > I'm dropping the ELF32 parts of them, because I think they will not be
> > used in the future.  (I estimate the theoretical minimum memory size
> > that makedumpfile could use the extended numbering is 64GB+256MB on
> > 4k page system.)
> 
> I dropped the ELF32 part from the crash patch, could you check this?
> https://github.com/k-hagio/crash/tree/support-extended-elf.v2

Thanks Kazu -- the patch is queued for crash-7.2.8:
  
  https://github.com/crash-utility/crash/commit/c0bbd8fae4271159aee9e643350781909484c92f

Dave


> This is for makedumpfile:
> https://github.com/k-hagio/makedumpfile/tree/support-extended-elf.v2
> 
> I will post the updated makedumpfile patch later for public review,
> and would like to apply it next week.
> 
> Thanks,
> Kazu
> 
> 
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
