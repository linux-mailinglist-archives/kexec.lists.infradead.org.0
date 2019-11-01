Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6F2EC342
	for <lists+kexec@lfdr.de>; Fri,  1 Nov 2019 13:53:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVG+AaJykn/xffuxW/11Ua5JSlaFDaPAwaYrdNnsuuY=; b=mFa6ed7cNvSBg7
	7lW+eyDBBtTdpaVhAMxEvhh1ataw/Il4VVVuug4PRlQZ6PNkur0HpuIviT9mhW98i4gwmWwe8o3Me
	X6Jvv9k+jGzin+9gngEuiB1g2wHlVjA10jAGbyxk3sFWTxfO+hLGnvv7cFw1hBzLQSe1XL6lrMzKC
	nQFRWlolqGQM+Abbb8qKyvKTnlNTmUPFfGFSD/CW9TJVgZtDIp6KfVguaJegY8gnlipq7n1qVfKUv
	H+iHkZsSgn3FlC7GvZALubCVqjGBC1GClh3MqnGU+FHHJmRqLvj8Vnki7AAf0n6EJxq6KR2eWy9GM
	vgQ2CsLNolvQSgYhqePQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWQc-00032f-NB; Fri, 01 Nov 2019 12:53:22 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWMF-0006DM-GF
 for kexec@lists.infradead.org; Fri, 01 Nov 2019 12:48:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572612529;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Aj2K+m0GzkdPWtJhJXNJyBThVQ+VaOu3vQ+8hYh1bFY=;
 b=ELU2FROvbOypjp6HcS/sFhB1Dc2N+Ce/6zuztjUwevMQR4uFIoFSUwD1ImgkyylpcdpRy7
 w+Ak15VoBQS++sl2VyDv48H+Ze5rycifa6h5iel2oxDfdINkxXiRommmuEql7Q6pUqRvXQ
 j9dNL4QGMp+BQd2DbhTec4pW6Sy/nWg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-397-QuWNs6UWPECIGBX0eaef1Q-1; Fri, 01 Nov 2019 08:48:46 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 93233800EBA
 for <kexec@lists.infradead.org>; Fri,  1 Nov 2019 12:48:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A15326574
 for <kexec@lists.infradead.org>; Fri,  1 Nov 2019 12:48:45 +0000 (UTC)
Received: from zmail24.collab.prod.int.phx2.redhat.com
 (zmail24.collab.prod.int.phx2.redhat.com [10.5.83.30])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7E04018095FF;
 Fri,  1 Nov 2019 12:48:45 +0000 (UTC)
Date: Fri, 1 Nov 2019 08:48:45 -0400 (EDT)
From: Dave Anderson <anderson@redhat.com>
To: "Discussion list for crash utility usage,
 maintenance and development" <crash-utility@redhat.com>
Message-ID: <1684529127.9771679.1572612525461.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191101014837.lxmqee5jyic7lk4d@two.firstfloor.org>
References: <20191101014837.lxmqee5jyic7lk4d@two.firstfloor.org>
Subject: Re: [Crash-utility] crash and makedumpfile with 5.3 missing memory
 in	dump
MIME-Version: 1.0
X-Originating-IP: [10.10.121.199, 10.4.195.26]
Thread-Topic: crash and makedumpfile with 5.3 missing memory in dump
Thread-Index: LPFKZvJJ5EdoIsQ7AdLyEUUx7oTwfg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: QuWNs6UWPECIGBX0eaef1Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054851_627208_BBE5CB4D 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
> Hi,
> 
> [I'm not sure if that is a crash or mkdumpfile problem]
> 
> I'm trying to use crash to read a makedumpfile vmcore from 5.3, but I always
> end up with an error when opening the dump.
> 
> I'm using the latest github crash
> 
> crash 7.2.7++
> ...
>  crash: page excluded: kernel virtual address: ffffffff82110370  type:
>  "possible"
>  WARNING: cannot read cpu_possible_map
>  crash: page excluded: kernel virtual address: ffffffff82110360  type:
>  "present"
>  WARNING: cannot read cpu_present_map
>  crash: page excluded: kernel virtual address: ffffffff82110368  type:
>  "online"
>  WARNING: cannot read cpu_online_map
>  crash: page excluded: kernel virtual address: ffffffff82110358  type:
>  "active"
>  WARNING: cannot read cpu_active_map
>  crash: page excluded: kernel virtual address: ffffffff82011544  type:
>  "init_uts_ns"
>  crash: page excluded: kernel virtual address: ffffffff82110360  type:
>  "cpu_present_map"
>  crash: page excluded: kernel virtual address: ffffffff82110360  type:
>  "cpu_present_map"
>  WARNING: ORC unwinder: cannot read lookup_num_blocks
>  crash: seek error: kernel virtual address: ffff88822dffb000  type:
>  "memory section root table"
> 
> The dump is created with the latest makedumpfile release
> 
> makedumpfile: version 1.6.6 (released on 27 Jun 2019)
> 
> It complains that it doesn't support the kernel
> 
> Any ideas?
> 
> -Andi
> 

Yeah, I'm not sure either.  I've tested the github crash on kernels up to 5.4-rc5,
but only running on a live system.  Given that the errors indicate "page excluded",
it looks like makedumpfile 1.6.6 may not cover 5.4 kernels.  The makedumpfile git
log's master branch shows these as the last two commits:

  commit 0a8b504102dbdb952b2e2e3ce15ae706165eba4e
  Author: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
  Date:   Thu Jun 27 08:42:40 2019 -0400

    [v1.6.6] Update version
    
    Update makedumpfile to version 1.6.6.
    
    Signed-off-by: Kazuhito Hagio <k-hagio@ab.jp.nec.com>

  commit 8c21fc7e7c52a2c3e0299e50a8b37becadfa77b4
  Author: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
  Date:   Thu Jun 13 15:32:55 2019 -0400

    [PATCH] Support newer kernels up to v5.1
    
    A new makedumpfile supports newer kernels:
    
      - 4.20, 5.0, 5.1  (x86 FLATMEM)
      - 4.20, 5.0, 5.1  (x86 SPARSEMEM)
      - 4.20, 5.0, 5.1  (x86_64 SPARSEMEM)
    
    Signed-off-by: Kazuhito Hagio <k-hagio@ab.jp.nec.com>

Dave







> --
> Crash-utility mailing list
> Crash-utility@redhat.com
> https://www.redhat.com/mailman/listinfo/crash-utility
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
