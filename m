Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B661CFCEE
	for <lists+kexec@lfdr.de>; Tue, 12 May 2020 20:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZvxO6lWhhdEottqdfkMoLBIK2APQeFvQ6w5Di9HvAQ=; b=MKeTbiBv+48SnI
	dRWOPjKPDMucIBGcXMQZ1lLoj4nQn5QDETGAuiSf7rdrbNYAIp0ImVnK5ui/ZFB51soMWBtBZr2Sf
	nudkTbHEzzsAaAqb5c26BkXoZWbKN7YDDjVMiPxrFkfT5zsu7mTY3uda7zLuL2F9B/pJpAPWL/OB1
	lwAMqrFVRI69hG/HA3TnP/ugt3+xhSKgaO5xiTb6vnI/kpyt1UbMlDLQ5Uu+KC6bq2hitm9SFo5vO
	+2St420FBSFti4bA4gUQPn/khINTD6BqjoOK/3F5l6oQIpUNvZtrW02wzgrZDFippeS6QZB8qyJ7f
	DJivXhtz7y/9RRlDkJNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYZRF-0002Vk-AH; Tue, 12 May 2020 18:15:33 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYZRB-0002VL-Ul
 for kexec@lists.infradead.org; Tue, 12 May 2020 18:15:31 +0000
Received: from mail-ed1-f69.google.com ([209.85.208.69])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <guilherme.piccoli@canonical.com>) id 1jYZR8-0006Kt-9w
 for kexec@lists.infradead.org; Tue, 12 May 2020 18:15:26 +0000
Received: by mail-ed1-f69.google.com with SMTP id m6so5590587eda.16
 for <kexec@lists.infradead.org>; Tue, 12 May 2020 11:15:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E9wVa1esTDO2uaWCeOHbg3GynVkWv4/l+FNpsMHbjjw=;
 b=ujYuLxZdsjRCpvlS2U2PTt4kvg/hAtsKXXPQoRuwYX0aaAVaEpkGpQGiNFGaiZHP9U
 Rx5k+3bwVTG1Ew1KE7G9aB+FJTYSRjdoGFtsXXOtaaQfD191SLO5ROQudZqfwCGeJm5A
 mHPo8pqWVdETY9RpActmDEL+lrImnPDUFpVt6MnZZl4WF9R59lFaBVbCHZMIDcXL4l8M
 2NbHsjN3oaT0ieHnI29aqQqKHoR5SP+O4hQxkjIE13PaBnAE3kYjscMz6sOaCmgnquPF
 BqGF5Zczm5tn1J6mkwO9PDOEVQPyt+eNc8r/FOk5RtgesW0qcj7QvIZdFsqYD0tAvdE8
 HdqA==
X-Gm-Message-State: AGi0PubrwIg5Xzik1BC8x6+jSjZBeVbkBwCzplb7hW7Dd0j6s8KvnwTE
 PTOpopqSLQoYkK/se8eDLYiZ1CaEzjq8SVGWi47uVDq606vsRt0yhREZy08q6cOZgfNjefAPei6
 HHgFn3twh6jmgZa4Nkv6Q/si6Ajj33RXdcWkJGdwScD38hgPR6QpKfQ==
X-Received: by 2002:a50:8b42:: with SMTP id l60mr18458852edl.55.1589307325877; 
 Tue, 12 May 2020 11:15:25 -0700 (PDT)
X-Google-Smtp-Source: APiQypJew7qn5bRdZKW3y1vi7AsxZLGjsxWks1DAhgkYSm3iawoA8rmhYHq94uI/kGMvLoZ3//c5XsKKw7O9EHkGxys=
X-Received: by 2002:a50:8b42:: with SMTP id l60mr18458840edl.55.1589307325674; 
 Tue, 12 May 2020 11:15:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200512172546.GL31850@zorba>
In-Reply-To: <20200512172546.GL31850@zorba>
From: Guilherme Piccoli <gpiccoli@canonical.com>
Date: Tue, 12 May 2020 15:14:49 -0300
Message-ID: <CAHD1Q_wJGA+b9hgLhUUt2fBK8aEOchis9EDW4W8JVQ1EreFwqA@mail.gmail.com>
Subject: Re: [REQUEST] makedumpfile: stream compress flat ELF format with libz
To: "Daniel Walker (danielwa)" <danielwa@cisco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_111530_132771_6C957F04 
X-CRM114-Status: UNSURE (   4.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

It's a quite interesting feature Daniel, thanks for the effort!
I'm curious about memory usage - did you somehow measure the
consumption with your patches vs. the regular kdump compression?

Thanks,


Guilherme

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
