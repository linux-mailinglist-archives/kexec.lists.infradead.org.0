Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B41B107404
	for <lists+kexec@lfdr.de>; Fri, 22 Nov 2019 15:22:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9VQNQ59lyA+6AXO3n1QA8XPzaWVmPs5w/wMizaYaRI=; b=FbkoVW6EbqvsFu
	qj7qaqWw4hDjDFEG1LPCEEtNcNDrJF76iSlhTBaWmZR0mGJqFKPeMinF9hYf9RcYDXz7WVSGm7T/Q
	kX2bAEvmbxfbFoKMJKdYiuD4TU+77sMXXeW2Jio6sjhrsCx9TvFaibGXJM5L6Uc0FKcwV+JekH8HE
	X+MwzINPqPQQSD8vm3Q15Xt/+BHyE6PWJRKgUpkom26+nt1NlhXOKmtQQDW1wmZWK2fvH0msKzLJs
	W4e4+Rro7tnHIwiCriCJiN36kzJUt6l9okVIBiOEDDNi1rMSaR2tu9hClRU6KRk84yJUVu6Y7NERr
	YGbDZCalkjyiQ8zljPLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY9pE-00032P-R5; Fri, 22 Nov 2019 14:22:20 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY9p8-000323-01
 for kexec@lists.infradead.org; Fri, 22 Nov 2019 14:22:19 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAMEJrL7090262;
 Fri, 22 Nov 2019 14:22:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=kX6LCQWXOLDbh37SSvAsuyEZ/fcEGxdDMVRq+ZqLCqo=;
 b=KjxjJJjh280m/JhPYycjDmooVwtfbmrVhm0KAh1S/PHYKGbHaAFUWMaOJXUzkk8bNN0+
 lhn4TH6hZpup8eTl5hEeOsj1LG1ILWZDofLX0iHSodaC/glfhAavGoxRKmLXo2cuI8Yh
 kXl1hdTLVna92qkcf7LVuay8oOqmcTf2nx+1XoDSzVn/UTd3wPGKIZVdMV8xmQ6hUXAY
 NPpfzzsArOHySii0zhZz2S/qiu8Wyc73M+Fu3zJSsc9bQCe0sKB8EzeGaotlUpRiKfJN
 Puqzaq/r/qMJ1hq1F8CP7Hpr1SywdrQF738CpORJFKNMPA52/PCZ6a3+AUCk364DRC9T 2g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2wa9rr2t39-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Nov 2019 14:22:05 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAMEIMhR127601;
 Fri, 22 Nov 2019 14:22:05 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2wegqqxsb5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Nov 2019 14:22:04 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xAMEM3SV012112;
 Fri, 22 Nov 2019 14:22:04 GMT
Received: from dhcp-10-154-114-246.vpn.oracle.com (/10.154.114.246)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 22 Nov 2019 06:22:03 -0800
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <03F00E44-16D9-46E8-88DA-6891968CE167@oracle.com>
Date: Fri, 22 Nov 2019 08:22:01 -0600
Message-Id: <5F63D43D-09E6-4188-A708-C31AB9F6CC0A@oracle.com>
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
 <CAJ2QiJJ6DdxFheRo78+n1=ZuqMQnHeuLVWchK8SApt3w9wBKLQ@mail.gmail.com>
 <B71B3868-9A0B-46AD-8777-97A1599BFB91@oracle.com>
 <CACi5LpOF2FLrmXEyJ4FfjqJBxxt-np2+1V0EFK__EH=6ubFE0A@mail.gmail.com>
 <276620F6-E9AC-4BC6-B413-D84677C3D6BC@oracle.com>
 <CACi5LpO9hRKotoMAgEQiLPEHWm7DO_NXWmTL1Wcfi3A0OyGJMQ@mail.gmail.com>
 <4C21663E-4E3B-402D-96FD-BD7623C6628A@oracle.com>
 <F5504C62-6D51-4E37-AA35-269FEA7AE480@oracle.com>
 <C825B090-610A-4EFE-9292-57DDD4832BA6@oracle.com>
 <03F00E44-16D9-46E8-88DA-6891968CE167@oracle.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9448
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=752
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911220128
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9448
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=3 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=817 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911220128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_062214_166643_90242367 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Prabhakar Kushwaha <prabhakar.pkin@gmail.com>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CgpIaSBCaHVwZXNoLAoKSSByZWNhbGwgc2VlaW5nIGEgcmVmZXJlbmNlIHRvIG1vZGlmaWNhdGlv
biBhcmUgbmVlZGVkIGZvciB0aGUgY3Jhc2ggQ0xJIGFsc28gdG8gc3VwcG9ydCA1LjQuMC1yYyB3
aXRoIHlvdXIga2VybmVsIHBhdGNoZXMgY2l0ZWQgaGVyZS4KIApXaGVyZSB3b3VsZCBJIGZpbmQg
dGhhdCBhdCA/ICBJIGRvbuKAmXQgc2VlIGNyYXNoIG9uIEdpYmxhYi4KCgo+Pj4gCj4+PiAKPj4+
IEhpIAo+Pj4gCj4+PiAKPj4+IEkgd2FzIGFibGUgdG8gZm9yayBhbmQgY2xvbmUgeW91ciB3b3Jr
IGFyZWEgLgo+Pj4gCj4+PiBJIGNhbiBzZWUgbWFrZWR1bXBmaWxlIHdvcmtzIG5vdyAhIAo+Pj4g
Cj4+PiBGYW50YXN0aWMgOzsgIFRoYW5rIHlvdSBmb3IgeW91ciBwYXRpZW5jZSAhCj4+PiAKPj4g
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMg
bWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
